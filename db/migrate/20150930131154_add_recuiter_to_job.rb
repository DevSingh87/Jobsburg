class AddRecuiterToJob < ActiveRecord::Migration
  def change
  	add_column :jobs, :recruiter_id, :integer
  end
end
