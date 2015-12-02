class Goal < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true, length: { maximum: 16 , too_long: "%{count} characters is the maximum allowed"}
	validates :body, presence: true, length: { maximum: 32 }
	validates :goal, presence: true
end
