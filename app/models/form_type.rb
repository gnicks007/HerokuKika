class FormType < ActiveRecord::Base
  has_many :fields, class_name: "FormField", :dependent => :destroy
  accepts_nested_attributes_for :fields, allow_destroy: true
end
