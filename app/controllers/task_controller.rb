class TaskController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def show
    @task = Tast.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
