class RenameSetuiriColumnToSetsuiris < ActiveRecord::Migration[5.2]
  def change
    rename_column :setsuiris, :setuiri_str,:setsuiri_str
  end
end
