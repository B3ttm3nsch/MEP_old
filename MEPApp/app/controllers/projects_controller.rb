class ProjectsController < ActionController::Base
  def index
    p "++++++++ PROJECT.INDEX ..."
    # projects = Tblproject.includes([:client, :partials]).order("Name asc").map{|k| k.to_dict}
    # projects = [] if projects.nil?
    p "++++++++ PROJECT.INDEX ... DONE!"
    @projects = Tblproject.all

    # respond_to do |format|
    #   format.json { render json: projects }
    # end
  end

  def show
    @project = Tblproject.find(params[:id])
  end
end