class CreateZokans < ActiveRecord::Migration[5.2]
  def change
    create_table :zokans do |t|
      t.integer :shi
      t.integer :setsuiri

      t.timestamps
    end
  end
end
