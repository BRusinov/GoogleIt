class AddForeignKeys2 < ActiveRecord::Migration
  def change
  	change_table :form_fields do |t|
      add_foreign_key :form_id, :forms
      add_foreign_key :field_id, :fields
	   end
   end
end
