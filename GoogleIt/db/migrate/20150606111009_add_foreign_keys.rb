class AddForeignKeys < ActiveRecord::Migration
  def change
  	change_table :form_fields do |t|
	  	t.integer :form_id
	  	t.integer :field_id
		end
  end
end
