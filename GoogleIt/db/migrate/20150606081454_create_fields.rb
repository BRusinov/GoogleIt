class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|

      t.string :name
      t.string :type
      t.boolean :required

      t.timestamps null: false
    end
  end
end
