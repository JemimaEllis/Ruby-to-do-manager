class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    new_task = Task.create(task_params)
    new_task.user_id = current_user.id
    new_task.save

    redirect_to new_task
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    task.update(task_params)

    redirect_to task
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_url
  end

  protected
  def task_params
    params.require(:task).permit(:list, :user_id)
  end
end
