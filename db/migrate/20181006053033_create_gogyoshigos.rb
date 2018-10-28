class CreateGogyoshigos < ActiveRecord::Migration[5.2]
  def change
    create_table :gogyoshigos do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :gogyoshigo

      t.timestamps
    end
  end
end
