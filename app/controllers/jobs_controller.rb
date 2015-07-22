class JobsController < ApplicationController
 def index
  if params[:category_id]
    @jobs = Job.where(:category_id => params[:category_id])
  else
    @jobs = Job.all
  end
end
# Get the list of jobs industrywise
 def industrywise
  if params[:industry_id]
    @jobs = Job.where(:industry_id => params[:industry_id])
  else
    @jobs = Job.all
  end
  render("index")
 end
end
