class CreateKokusens < ActiveRecord::Migration[5.2]
  def change
    create_table :kokusens do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :kokusen

      t.timestamps
    end
  end
end
