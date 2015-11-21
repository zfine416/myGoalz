class GoalsController < ApplicationController
	skip_before_filter :verify_authenticity_token
	before_action :get_user_id
	def index
		@goals = Goal.all
    	respond_to do |format|
      		format.html
      		format.json { render json: @goals }
    	end
	end

	def new
	end

	def create
		@goal = Goal.new(goal_params)
		@goal.user_id = get_user_id
		respond_to do |format|
			if @goal.save
				format.html {redirect_ to @goal, "Saved Succesfully"}
				format.js
				format.json { render json: @goal }
			end
			# should handle failed save
		end
	end

	private

	def goal_params
		params.require(:goal).permit(:title,:body,:date,:color)
	end	

	def get_user_id
      current_user.id
    end
end
