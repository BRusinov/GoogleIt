class CreateReportFields < ActiveRecord::Migration
  def change
    create_table :report_fields do |t|

      t.timestamps null: false
    end
  end
end
