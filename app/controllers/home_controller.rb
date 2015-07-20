class HomeController < ApplicationController
	def index
		@fresherjobs = Job.where('category_id=1').limit(5)
		@govtjobs = Job.where('category_id=2').limit(5)
		@bpojobs = Job.where('category_id=3').limit(5)
	end
end
