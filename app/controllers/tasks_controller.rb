class TasksController < ApplicationController
  respond_to :html, :json

  expose(:task)
  expose(:tasks) { Task.all }

  # POST /tasks
  # POST /tasks.json
  def create
    flash[:notice] = "Task was successfully created." if task.save
    respond_with(task)
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    flash[:notice] = "Task was successfully updated." if task.save
    respond_with(task)
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    task.destroy
    respond_with(task)
  end
end
