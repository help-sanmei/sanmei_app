class CreateJushus < ActiveRecord::Migration[5.2]
  def change
    create_table :jushus do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :jushu

      t.timestamps
    end
  end
end
