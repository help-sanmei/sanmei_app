class AddColumnStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :energy_1, :integer
    add_column :staffs, :energy_2, :integer
    add_column :staffs, :energy_3, :integer
    add_column :staffs, :energy_4, :integer
    add_column :staffs, :energy_5, :integer
  end
end
