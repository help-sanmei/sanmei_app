class Addcolumnimage < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :im_kd, :integer
    add_column :staffs, :im_km, :integer
    add_column :staffs, :im_ky, :integer
    add_column :staffs, :im_sd, :integer
    add_column :staffs, :im_sm, :integer
    add_column :staffs, :im_sy, :integer
    
    add_column :staffs, :ym_sn, :integer
    add_column :staffs, :ym_jy, :integer
    add_column :staffs, :ym_sw, :integer
    add_column :staffs, :ym_sc, :integer
    add_column :staffs, :ym_se, :integer
    add_column :staffs, :ym_jd, :integer
    add_column :staffs, :ym_ss, :integer
    add_column :staffs, :ym_jm, :integer
    
    add_column :staffs, :moku, :integer
    add_column :staffs, :ka, :integer
    add_column :staffs, :dou, :integer
    add_column :staffs, :gon, :integer
    add_column :staffs, :sui, :integer
    
  end
end
