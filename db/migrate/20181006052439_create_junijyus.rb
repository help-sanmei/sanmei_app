class CreateJunijyus < ActiveRecord::Migration[5.2]
  def change
    create_table :junijyus do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :junijyu

      t.timestamps
    end
  end
end
