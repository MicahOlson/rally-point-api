class UsersController < ApplicationController
  def index
    organization = Organization.find(params[:organization_id])
    users = organization.users
    if users.empty?
      render status: 200, json: {message: "This organization has no members."}
    else
      json_response(users)
    end
  end

  def show
    organization = Organization.find(params[:organization_id])
    user = User.find(params[:id])
    if user.organization_id == organization.id
      json_response(user)
    end
  end

  def create
    user = User.create!(user_params)
    if user
      # session[:user_id] = user.id
      json_response(user: user, status: :created)
    else
      render json: { status: 422 }
    end
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    json_response(user, :accepted)
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy!
      render status: 200, json: {message: "Delete successful!"}
    end
  end

  private def user_params
    params.permit(
      :email,
      :password,
      :password_confirmation,
      :first_name,
      :last_name,
      :mobile_phone,
      :secondary_phone,
      :emergency_contact_name,
      :emergency_contact_phone,
      :group,
      :admin,
      :checked_in,
      :organization_id
    )
  end
end
