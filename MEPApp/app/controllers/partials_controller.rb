class ProjectsController < ActionController::Base
  def index
    p "++++++++ PROJECT.INDEX ..."
    @partials = BsagProjectPartial.all
    p "++++++++ PROJECT.INDEX ... DONE!"

    respond_to do |format|
      format.json { render json: partials }
    end
  end
end
