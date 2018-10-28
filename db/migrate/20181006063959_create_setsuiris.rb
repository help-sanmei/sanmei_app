class CreateSetsuiris < ActiveRecord::Migration[5.2]
  def change
    create_table :setsuiris do |t|
      t.integer :year
      t.string :setuiri_str

      t.timestamps
    end
  end
end
