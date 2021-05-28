class AddBornDayToKantei < ActiveRecord::Migration[5.2]
  def change
    add_column :kanteis, :born_day, :integer
  end
end
