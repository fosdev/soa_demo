class VisitsController < ApplicationController
  respond_to :html, :json
  
  expose(:visit)
  expose(:visits) { Visit.all}

  # POST /visits
  # POST /visits.json
  def create
    flash[:notice] = "Visit was successfully created." if visit.save
    respond_with(visit)
  end

  # PUT /visits/1
  # PUT /visits/1.json
  def update
    flash[:notice] = "Visit was successfully updated." if visit.save
    respond_with(visit)
  end

  # DELETE /visits/1
  # DELETE /visits/1.json
  def destroy
    visit.destroy
    respond_with(visit)
  end
end
