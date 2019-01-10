class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :family_name
      t.string :first_name
      t.string :gender
      t.date :birthday
      t.string :department
      t.string :icon

      t.timestamps
    end
  end
end
