class MepAudiosController < ActionController::Base
  def index
    @mep_audios = BsagProjectPartial.find(params[:project_partial_id]).mep_audios
    #@project_partials = Tblproject.find(params[:project_id]).project_partials
  end

  def show
    @mep_audio = BsagProjectPartial.find(params[:id])
  end

  def new
    @mep_audio = BsagMepAudio.new
  end

  def edit
    @mep_audio = BsagMepAudio.find(params[:id])
  end

  def create
    @project_partial = BsagProjectPartial.find(params[:project_partial_id])
    @mep_audio = @project_partial.mep_audios.create(mep_audio_params)
    if @mep_audio.save
      redirect_to project_project_partial_mep_audios_path
    else
      render 'edit'
    end
  end

  def update
    @mep_audio = BsagMepAudio.find(params[:id])

    if @mep_audio.updated(mep_audio_params)
      redirect_to @mep_audio
    else
      render 'edit'
    end
  end

  def destroy
    @mep_audio = BsagMepAudio.find(params[:id])
    @mep_audio.destroy

    redirect_to project_project_partial_mep_audios_path
  end

  private
    def mep_audio_params
      params.require(:bsag_mep_audio).permit( :bsag_project_partial_id,
                                              :bsag_audio_type_id,
                                              :bsag_mep_audio_id,
                                              :receiving_date,
                                              :bsag_mep_version_id,
                                              :version_number,
                                              :version_name_ext,
                                              :bsag_audio_format_id,
                                              :bsag_audio_speed_id,
                                              :is_complete,
                                              :is_complete_comment,
                                              :is_in_sync,
                                              :is_in_sync_comment,
                                              :dbtp_max, :lra, :lufs,
                                              :bsag_channel_error_id,
                                              :bsag_channel_error_comment,
                                              :bsag_mep_evaluation_id,)
                                              #audio_fault_comments_attributes: [ :bsag_audio_fault_id, :comment ] )
    end
end
