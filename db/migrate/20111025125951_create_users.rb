class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.integer :id

      t.timestamps
    end
  end
end
