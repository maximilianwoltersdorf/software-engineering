class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :chosen
      t.text :not_chosen

      t.timestamps
    end
  end
end
