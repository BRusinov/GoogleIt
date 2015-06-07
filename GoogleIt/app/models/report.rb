class Report < ActiveRecord::Base
	has_many :report_fields
	has_many :fields, through: :report_fields
	belongs_to :user
end
