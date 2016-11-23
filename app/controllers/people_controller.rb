class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  def index
    @people = Person.all
  end

  # GET /people/1
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
    @social_media_profile = SocialMediaProfile.new
  end

  # GET /people/1/edit
  def edit
    @social_media_profile = SocialMediaProfile.new
  end

  # POST /people
  def create
    @person = Person.new(person_params)
    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /people/1
  def update
    respond_to do |format|
      @person.update_attributes(person_params)
      if @person.save
        format.html { redirect_to root_path, notice: 'Person was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def person_params #:doc:
    params.require(:person).permit(:first_name, :last_name, :work_phone, :cell_phone, :email, :address, :male, :notes)
  end
end
