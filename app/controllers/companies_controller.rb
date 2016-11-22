class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  def index
    @companies = Company.all
  end

  # GET /companies/1
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  def create
    @company = Company.new(company_params)
    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /companies/1
  def update
    respond_to do |format|
      @company.update_attributes(company_params)
      if @company.save
        format.html { redirect_to root_path, notice: 'Company was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /companies/1
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def company_params #:doc:
    params.require(:company).permit(:name, :number_of_employees, :product, :typical_sale_size, :website, :company_size, :mission, :notes)
  end
end
