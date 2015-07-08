class JobsLocations < ActiveRecord::Migration
  def change
  	create_table :jobs_locations, id: false do |t|
  		t.belongs_to :job, index: true
  		t.belongs_to :location, index: true
  	end
  end
end
