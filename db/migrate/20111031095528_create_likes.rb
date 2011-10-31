class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.text :group
      t.integer :count

      t.timestamps
    end
  end
end
