class AddKanteiStatusToKantei < ActiveRecord::Migration[5.2]
  def change
    add_column :kanteis, :kantei_status, :boolean, default: false
  end
end
