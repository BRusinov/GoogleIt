class Field < ActiveRecord::Base
	has_many :form_fields, foreign_key: :field_id
	has_many :forms, through: :form_fields
end
