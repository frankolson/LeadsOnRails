class SocialMediaProfilesController < ApplicationController
  before_action :set_social_media_profile, only: [:update, :destroy]

  # POST /social_media_profiles
  def create
    @company = Company.find(social_media_profile_params[:company_id])
    @social_media_profile = @company.social_media_profiles.build(social_media_profile_params)
    respond_to do |format|
      if @social_media_profile.save
        format.html { redirect_to @company,
                      notice: 'Social Media Profile was successfully created.' }
      else
        format.html { redirect_to :back}
      end
    end
  end

  # PATCH/PUT /social_media_profiles/1
  def update
    respond_to do |format|
      @social_media_profile.update_attributes(social_media_profile_params)
      if @social_media_profile.save
        format.html { redirect_to @company, notice: 'Social Media Profile was successfully updated.' }
      else
        format.html { redirect_to :back }
      end
    end
  end

  # DELETE /social_media_profiles/1
  def destroy
    @social_media_profile.destroy
    respond_to do |format|
      format.html { redirect_to social_media_profiles_url, notice: 'Social Media Profile was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_social_media_profile
    @social_media_profile = SocialMediaProfile.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def social_media_profile_params #:doc:
    params.require(:social_media_profile).permit(:url, :company_id)
  end
end
