class HomeController < ApplicationController
  def index

  end


  def only_comp


    @tasks = Task.comp_tasks

  end

  def only_uncomp
    @tasks = Task.uncomp_tasks


  end





end


