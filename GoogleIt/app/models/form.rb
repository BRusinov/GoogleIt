class Form < ActiveRecord::Base
  has_many :form_fields, foreign_key: :form_id
	has_many :fields, through: :form_fields
	accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true
end
