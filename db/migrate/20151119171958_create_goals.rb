class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
    	t.string :title
    	t.text :body
    	t.date :goal
    	t.string :color

      t.timestamps null: false
    end
  end
end
