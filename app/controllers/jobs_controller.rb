class JobsController < ApplicationController
  def index
    @job = Job.all
    render 'jobs/index'
  end

  def create
    @job = Job.new(job_params)

    # required to save .new
    if @job.save
      render 'jobs/create'
    end
  end

  def show
    @job = Job.find_by(id: params[:id])

    if @job and @job.show
      render json: { success: true }
      render 'jobs/show'
    else
      render json: { success: false }
    end
  end
  
  private

  def job_params
    params.require(:job).permit(:content)
  end
end
