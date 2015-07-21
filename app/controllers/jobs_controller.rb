class JobsController < ApplicationController
 def index
  if params[:category_id]
    @jobs = Job.where(:category_id => params[:category_id])
  else
    @jobs = Job.all
  end
end
end
