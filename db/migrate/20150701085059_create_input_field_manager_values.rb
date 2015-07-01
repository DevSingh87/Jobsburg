class CreateInputFieldManagerValues < ActiveRecord::Migration
  def change
    create_table :input_field_manager_values do |t|
      t.string :name
      t.references :input_field_manager, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
