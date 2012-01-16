class ActivitiesController < ApplicationController
  respond_to :html, :json

  expose(:activity)
  expose(:activities) { Activity.all }

  # POST /activities
  # POST /activities.json
  def create
    flash[:notice] = "Activity was successfully created." if activity.save
    respond_with(activity)
  end

  # PUT /activities/1
  # PUT /activities/1.json
  def update
    flash[:notice] = "Activity was successfully updated." if activity.save
    respond_with(activity)
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    activity.destroy
    respond_with(activity)
  end
end
