class ProfilesController < ApplicationController

  # GET /users/:user_id?/profile/new

  def new
  # Render blanck profile details from
  @profile = Profile.new
  end
end