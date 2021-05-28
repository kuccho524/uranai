class AddBornMonthToKantei < ActiveRecord::Migration[5.2]
  def change
    add_column :kanteis, :born_month, :integer
  end
end
