class TasksController < ApplicationController
  attr_reader :task
  before_action :set_project

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET projects/1/tasks
  def index

    @tasks = @project.tasks
  end

  # def alltasks

  # @pagy, @tasks = pagy(Task.where(:uid == current_user.id))

  #end



  # GET projects/1/tasks/1
  def show

    @tasks =  Task.all
    


    end

  # GET projects/1/tasks/new
  def new
    @task = @project.tasks.build

  end

  # GET projects/1/tasks/1/edit
  def edit

  end

  # POST projects/1/tasks
  def create

    @task = @project.tasks.build(task_params)
    @task.uid = current_user.id



    if @task.save
      redirect_to([@task.project,], notice: "#{I18n.t 'tasks.task_created'}")
    else
      render action: 'new'
    end
  end

  # PUT projects/1/tasks/1
  def update
    if @task.update(task_params)
      redirect_to([@task.project, @task], notice: "#{I18n.t 'tasks.task_updated'}")
    else
      render action: 'edit'
    end
  end

  # DELETE projects/1/tasks/1
  def destroy
    @task.destroy

    redirect_to projects_path(@project), notice: "#{I18n.t 'tasks.task_destroy'}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project

      @project = Project.find(params[:project_id])

    end

    def set_task
      @task = @project.tasks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params

      params.require(:task).permit(:title, :description, :is_done, :project_id, :uid, :tag)
    end



end
