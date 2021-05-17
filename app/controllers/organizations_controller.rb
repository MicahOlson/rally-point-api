class OrganizationsController < ApplicationController
  def index
    organizations = Organization.all
    json_response(organizations)
  end

  def show
    organization = Organization.find(params[:id])
    json_response(organization)
  end

  def create
    organization = Organization.create!(organization_params)
    json_response(organization, :created)
  end

  def update
    organization = Organization.find(params[:id])
    organization.update!(organization_params)
    json_response(organization, :accepted)
  end

  def destroy
    organization = Organization.find(params[:id])
    if organization.destroy!
      render status: 200, json: {
       message: "Delete successful!"
       }
    end
  end

  private def organization_params
    params.permit(
      :name, 
      :location, 
      :point_of_contact, 
      :contact_phone, 
      :contact_email, 
      :status
    )
  end
end
