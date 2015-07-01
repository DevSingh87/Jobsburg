class InputFieldManager < ActiveRecord::Base
  has_many :input_field_manager_values
  accepts_nested_attributes_for :input_field_manager_values, allow_destroy: true
end
