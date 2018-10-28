class CreateGogyohankais < ActiveRecord::Migration[5.2]
  def change
    create_table :gogyohankais do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :gogyohankai

      t.timestamps
    end
  end
end
