class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|

      t.string :title
      t.string :target_url

      t.timestamps null: false
    end
  end
end
