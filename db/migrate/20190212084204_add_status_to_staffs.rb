class AddStatusToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :im_tx, :integer
  end
end
