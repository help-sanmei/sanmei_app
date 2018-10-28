class CreateGogyocngs < ActiveRecord::Migration[5.2]
  def change
    create_table :gogyocngs do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :gogyocng

      t.timestamps
    end
  end
end
