class FormField < ActiveRecord::Base
	belongs_to :form, foreign_key: :form_id, primary_key: :form_id
	belongs_to :field, foreign_key: :field_id, primary_key: :field_id
end
