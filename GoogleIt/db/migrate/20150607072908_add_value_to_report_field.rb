class AddValueToReportField < ActiveRecord::Migration
  def change
  	change_table :report_fields do |t|
  		t.string :value
  	end
  end
end
