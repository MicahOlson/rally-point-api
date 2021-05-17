class EventsController < ApplicationController
  def index
    organization = Organization.find(params[:organization_id])
    events = organization.events
    if events.empty?
      render status: 200, json: {message: "Whew, no disruption events today!"}
    else
      json_response(events)
    end
  end

  def show
    organization = Organization.find(params[:organization_id])
    event = Event.find(params[:id])
    if event.organization_id == organization.id
      json_response(event)
    end
  end

  def create
    event = Event.create!(event_params)
    json_response(event, :created)
  end

  def update
    event = Event.find(params[:id])
    event.update!(event_params)
    json_response(event, :accepted)
  end

  def destroy
    event = Event.find(params[:id])
    if event.destroy!
      render status: 200, json: {message: "Delete successful!"}
    end
  end

  private def event_params
    params.permit(
      :notification,
      :organization_id
    )
  end
end
