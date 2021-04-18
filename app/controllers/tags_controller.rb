class TagsController < ApplicationController
  before_action :set_task
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET tasks/1/tags
  def index
    @tags = @task.tags
  end




  # GET tasks/1/tags/1
  def show

  end

  # GET tasks/1/tags/new
  def new
    @tag = @task.tags.build
  end

  # GET tasks/1/tags/1/edit
  def edit
  end

  # POST tasks/1/tags
  def create
    @tag = @task.tags.build(tag_params)
    @tag.uid = current_user.id
    if @tag.save
      redirect_to([@tag.task, @tag], notice: 'Tag was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT tasks/1/tags/1
  def update
    if @tag.update_attribute(tag_params)
      redirect_to([@tag.task, @tag], notice: 'Tag was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE tasks/1/tags/1
  def destroy
    @tag.destroy

    redirect_to task_tags_url(@task)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:task_id])
    end

    def set_tag
      @tag = @task.tags.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tag_params
      params.require(:tag).permit(:title)
    end
end
