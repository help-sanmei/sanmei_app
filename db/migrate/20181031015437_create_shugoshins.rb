class CreateShugoshins < ActiveRecord::Migration[5.2]
  def change
    create_table :shugoshins do |t|
      t.integer :shi_m
      t.string :shugoshin

      t.timestamps
    end
  end
end
