class CreateUrazokans < ActiveRecord::Migration[5.2]
  def change
    create_table :urazokans do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :urazokan

      t.timestamps
    end
  end
end
