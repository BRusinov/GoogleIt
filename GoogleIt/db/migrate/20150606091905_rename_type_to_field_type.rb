class RenameTypeToFieldType < ActiveRecord::Migration
  def change
  	change_table :fields do |t|
	  t.rename :type, :field_type
	end
  end
end
