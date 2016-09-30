class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :DOB
      t.string :gender
      t.integer :age
      t.string :home_address, rows: 3
      t.string :previous_address, rows: 3
      t.string :phone_number
      t.string :email
      t.boolean :receive_txt, default: true

      t.timestamps
    end
  end
end
