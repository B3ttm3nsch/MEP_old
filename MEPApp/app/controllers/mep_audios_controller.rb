class MepAudiosController < ActionController::Base
  def index
    @mep_audios = BsagProjectPartial.find(params[:project_partial_id])
  end
  def show

  end
  def new

    @mep_audio = BsagMepAudio.new
  end
  def create
    @project_partial = BsagProjectPartial.find {params[:bsag_project_partial_id]}
    @mep_audio = @project_partial.mep_audios.create(meo_audio_params)
    redirect_to project_project_partial(@project_partial)
  end

  private
    def mep_audio_params
      # params.require(.mep_audio)
    end
end
