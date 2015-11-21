class RenameColumnDate < ActiveRecord::Migration
  def change
  	rename_column :goals, :goal, :date
  end
end
