json.array!(@jobs) do |job|
  json.extract! job, :id, :category_id, :job_title, :job_description, :work_exp_min, :work_exp_max, :salary_range_min, :salary_range_max, :openings, :industry_id
  json.url job_url(job, format: :json)
end
