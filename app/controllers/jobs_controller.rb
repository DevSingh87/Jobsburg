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
 # to show single job post
 def showjob
 	if params[:id]
 	   @job = Job.find(params[:id])
 	   @related_jobs = Job.joins(:taggings).where('jobs.id != ?', @job.id).where(taggings: { tag_id: @job.tag_ids }).uniq
 	else
       redirect_to root_path, notice: 'Job was not found.'
 	end
 end
end
