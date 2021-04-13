class HomeController < ApplicationController
  def index

  end


  def only_comp


    @tasks = Task.all.where(is_done: true)
    @tasks = @tasks.where(uid: current_user.id)
  end





end


