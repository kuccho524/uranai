class CreateKanteis < ActiveRecord::Migration[5.2]
  def change
    create_table :kanteis do |t|
      t.integer :course, default: 0
      t.integer :year, default: 2021
      t.integer :month, default: 1
      t.integer :day, default: 1
      t.text :inquiry

      t.timestamps
    end
  end
end
