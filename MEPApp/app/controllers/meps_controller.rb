class MepsController < ActionController::Base
  def index
    @project_partial = BsagProjectPartial.find(params[:project_partial_id])
    @meps = @project_partial.meps
  end

  def show
    @mep = BsagMepAudio.find(params[:id])
  end

  def new
    @mep = BsagMepAudio.new
  end

  def edit
    @mep = BsagMepAudio.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

#  def update
#    @article = Article.find(params[:id])
#
#    if @article.update(article_params)
#      redirect_to @article
#    else
#      render 'edit'
#    end
#  end

#  def destroy
#    @article = Article.find(params[:id])
#    @article.destroy
#
#    redirect_to articles_path
#  end

#  private
#  def article_params
#    params.require(:article).permit(:title, :text)
#  end
end