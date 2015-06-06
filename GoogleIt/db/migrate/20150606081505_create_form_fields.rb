class CreateFormFields < ActiveRecord::Migration
  def change
    create_table :form_fields do |t|

      t.timestamps null: false
    end
  end
end
