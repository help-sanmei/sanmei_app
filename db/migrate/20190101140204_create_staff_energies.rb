class CreateStaffEnergies < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_energies do |t|
      t.integer :energy_num
      t.integer :energy

      t.timestamps
    end
  end
end
