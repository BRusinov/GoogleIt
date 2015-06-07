class AddIdsToReportField < ActiveRecord::Migration
  def change
  	change_table :report_fields do |t|
  		t.integer :report_id
  		t.integer :field_id
  	end
  end
end
