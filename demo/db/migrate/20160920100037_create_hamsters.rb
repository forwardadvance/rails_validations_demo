class CreateHamsters < ActiveRecord::Migration
  def change
    create_table :hamsters do |t|
      t.integer :lat
      t.integer :lng
      t.string :name
      t.string :weather
      t.text :description

      t.timestamps
    end
  end
end
