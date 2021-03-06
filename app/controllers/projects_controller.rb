class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]


  # GET /projects or /projects.json
  def index
    redirect_to new_user_session_path, notice: "#{I18n.t 'login.need_to_login'}" if current_user.nil?
    @pagy, @projects = pagy( Project.search(params[:search]))



  end

  # GET /projects/1 or /projects/1.json
  def show




   @tasks = Task.new


  end





  # GET /projects/new
  def new
    @project = Project.new
    #@project = Project.find_by_id(params[:id])
    @project.position = Project.where(:uid => current_user.id).length
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects or /projects.json
  def create

    @project = Project.new(project_params)
    @project.uid = current_user.id



    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "#{I18n.t 'project.project_created'}"}
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def last_projects
    @pagy, @projects = pagy( Project.where(:uid => current_user.id))

  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: "#{I18n.t 'project.project_updated'}"}
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "#{I18n.t 'project.project_destoy'}"}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :position, :uid)
    end
end
