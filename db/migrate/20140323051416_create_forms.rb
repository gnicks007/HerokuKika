class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :study
      t.string :investigator

      t.timestamps
    end
  end
end
