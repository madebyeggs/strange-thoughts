class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def bring_in_models
    @heros = Hero.order("id DESC")
    @abouttb1 = Abouttb.first
    @abouttbs = Abouttb.all[1..-1]
    @abouttbsall = Abouttb.all
    @aboutbbs = Aboutbb.all
    @projects = Project.all
  end
  
end