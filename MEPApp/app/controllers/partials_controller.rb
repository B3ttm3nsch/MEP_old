class PartialsController < ActionController::Base
  def index
    @partials = BsagProjectPartial.all
  end
end
