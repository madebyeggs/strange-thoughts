class AboutbbsController < ApplicationController
    before_filter :authenticate_user!

    def new
      @aboutbb = Aboutbb.new
    end

    def create
      @aboutbb = Aboutbb.create(aboutbb_params)
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def show
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def index
      @aboutbb = Aboutbb.all
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def edit
      @aboutbb = Aboutbb.find(params[:id])
    end

    def update   
      @aboutbb = Aboutbb.find(params[:id])
      if @aboutbb.update_attributes(aboutbb_params)
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @aboutbb = Abouttb.find(params[:id])
      @aboutbb.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end
    
    private
    
    def aboutbb_params
      params.require(:aboutbb).permit(:title, :content)
    end
  
end