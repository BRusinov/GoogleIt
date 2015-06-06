class AddNameAttributeToField < ActiveRecord::Migration
  def change
  	change_table :fields do |t|
  		t.string :name_attribute 
  	end
  end
end
