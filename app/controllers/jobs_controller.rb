class JobsController < ApplicationController
  before_action :set_job,     only: [:update, :destroy]
  before_action :set_person,  only: [:create, :update, :destroy]
  before_action :set_company, only: [:update, :destroy]

  # POST /jobs
  def create
    @job = Job.create(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to edit_person_path(@person),
                      notice: 'Job was successfully created.' }
      else
        format.html { redirect_back(fallback_location: @person) }
      end
    end
  end

  # PATCH/PUT /jobs/1
  def update
    @job.update_attributes(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to edit_person_path(@person), notice: 'Job was successfully updated.' }
      else
        format.html { redirect_back(fallback_location: @person) }
      end
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy

    respond_to do |format|
      format.html { redirect_to edit_person_path(@person), notice: 'Job was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = Job.find(params[:id])
  end
  def set_person
    @person = Person.find(job_params[:person_id])
  end
  def set_company
    @company = Company.find(job_params[:company_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def job_params #:doc:
    params.require(:job).permit(:title, :start_date, :company_id, :person_id)
  end
end
