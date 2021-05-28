class AddMemberIdToKantei < ActiveRecord::Migration[5.2]
  def change
    add_column :kanteis, :member_id, :integer
  end
end
