class CreateSoukokus < ActiveRecord::Migration[5.2]
  def change
    create_table :soukokus do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :soukoku

      t.timestamps
    end
  end
end
