class HomeController < ApplicationController
  def index



  end

  def index2
    @projects = Project.where(:uid => current_user.id)
  end


  def search
    if current_user.nil?
      redirect_to new_user_session_path, notice: "#{I18n.t 'login.need_to_login'}"
    else
      @projects = Project.search(params[:search]).where(uid: current_user.id)
      @tasks = Task.search(params[:search]).where(uid: current_user.id)
      @tags = Tag.search(params[:search]).where(uid: current_user.id)

    end
    end


  def only_comp


    @tasks = Task.comp_tasks.where(uid: current_user.id)

  end

  def only_uncomp
      @tasks = Task.uncomp_tasks.where(uid: current_user.id)


  end

  def alltasks



    if current_user.nil?
      redirect_to new_user_session_path, notice: "#{I18n.t 'login.need_to_login'}"
      else
      @pagy, @tasks = pagy (Task.where(:uid => current_user.id))
      end

  end


  def alltags

    @tags_titles = Array.new
    if current_user.nil?
      redirect_to new_user_session_path, notice: "#{I18n.t 'login.need_to_login'}"
    else
    @pagy, @tags = pagy( Tag.where(:uid => current_user.id) )



    end




    end





end


