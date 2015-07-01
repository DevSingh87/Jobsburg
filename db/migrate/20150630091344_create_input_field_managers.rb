class CreateInputFieldManagers < ActiveRecord::Migration
  def change
    create_table :input_field_managers do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
