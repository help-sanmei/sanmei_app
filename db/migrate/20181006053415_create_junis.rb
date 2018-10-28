class CreateJunis < ActiveRecord::Migration[5.2]
  def change
    create_table :junis do |t|
      t.integer :shi
      t.integer :setsuiri
      t.integer :juni

      t.timestamps
    end
  end
end
