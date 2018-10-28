class CreateGousans < ActiveRecord::Migration[5.2]
  def change
    create_table :gousans do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :gousan

      t.timestamps
    end
  end
end
