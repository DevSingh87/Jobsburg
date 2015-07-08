class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.string :job_title
      t.text :job_description
      t.integer :work_exp_min
      t.integer :work_exp_max
      t.string :salary_range_min
      t.string :salary_range_max
      t.integer :openings
      t.belongs_to :industry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
