class ProjectPartialsController < ActionController::Base
  def index
    @project = Tblproject.find(params[:project_id])
    @project_partials = @project.project_partials.all
      #@project_partials = Tblproject.find(params[:project_id]).project_partials
  end

  def show
    @project_partial = BsagProjectPartial.find(params[:id])
  end

  def new
  end
  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def article_params
  end
end
