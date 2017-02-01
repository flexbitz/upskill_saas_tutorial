class ProfilesController < ApplicationController

  # GET /users/:user_id?/profile/new

  def new
  # Render blanck profile details from
  @profile = Profile.new
  end
  
# POST to /users/:user_id/profile
def create
  # Ensure that we have the user who is filling out form
  @user = User.find( params[:user_id] )
  # Create profile linked to this specific user
  @profile = @user.build_profile( profile_params )
  if @profile.save
    flash[:success] = "Profile updated!"
    redirect_to user_path( params[:user_id] )
  else
    render action: :new
  end
end

# GET /users/:user_id/profile/edit
def edit
  @user = User.find( params[:user_id] )
  @profile = @user.profile

end


private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :avatar, :job_title, :phone_number, :contact_email, :description)
  end
end

def update
  @user = User.find( params[:user_id] )
  @profile = @user.profile
  if @profile.update_attributes(profile_params)
    flash[:success] = "Profile Updated!"
    redirect_to user_path( params[:user_id] )
  else
    render action: :edit
  end
end