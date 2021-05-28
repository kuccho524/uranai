class AddColumnToKantei < ActiveRecord::Migration[5.2]
  def change
    add_column :kanteis, :last_name, :string
    add_column :kanteis, :first_name, :string
    add_column :kanteis, :last_name_kana, :string
    add_column :kanteis, :first_name_kana, :string
  end
end
