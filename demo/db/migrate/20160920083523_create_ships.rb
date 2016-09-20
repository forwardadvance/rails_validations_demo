class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.string :nickname
      t.integer :size
      t.float :lat
      t.float :lng
      t.text :description

      t.timestamps
    end
  end
end
