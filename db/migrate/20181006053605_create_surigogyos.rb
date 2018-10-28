class CreateSurigogyos < ActiveRecord::Migration[5.2]
  def change
    create_table :surigogyos do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :surigogyo

      t.timestamps
    end
  end
end
