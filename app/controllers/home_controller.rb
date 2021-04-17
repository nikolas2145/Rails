class HomeController < ApplicationController
  def index



  end


  def search

    @projects = Project.search(params[:search])
    @tasks = Task.search(params[:search])
    @tags = Tag.search(params[:search])
  end


  def only_comp


    @tasks = Task.comp_tasks

  end

  def only_uncomp
    @tasks = Task.uncomp_tasks


  end

  def alltasks
    @pagy, @tasks = pagy (Task.all)

  end


  def alltags
    @pagy, @tags = pagy( Tag.all )
  end




end


