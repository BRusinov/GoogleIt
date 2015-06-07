class Field < ActiveRecord::Base
	has_many :form_fields
	has_many :forms, through: :form_fields

	has_many :report_fields
	has_many :reports, through: :report_fields
end
