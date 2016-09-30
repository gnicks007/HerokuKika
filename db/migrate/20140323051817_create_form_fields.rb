class CreateFormFields < ActiveRecord::Migration
  def change
    create_table :form_fields do |t|
      t.string :name
      t.string :fieldtype
      t.boolean :required
      t.belongs_to :form_type, index: true

      t.timestamps
    end
  end
end
