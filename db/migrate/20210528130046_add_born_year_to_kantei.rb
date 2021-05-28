class AddBornYearToKantei < ActiveRecord::Migration[5.2]
  def change
    add_column :kanteis, :born_year, :integer
  end
end
