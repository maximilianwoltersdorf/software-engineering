class AddNameToGame < ActiveRecord::Migration
  def change
    add_column :games, :user_name, :text
  end
end
