class ReportField < ActiveRecord::Base
	belongs_to :report
	belongs_to :field
end
