class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :edu_level
      t.string :course

      t.timestamps null: false
    end
  end
end
