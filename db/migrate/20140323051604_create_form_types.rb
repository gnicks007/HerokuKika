class CreateFormTypes < ActiveRecord::Migration
  def change
    create_table :form_types do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
