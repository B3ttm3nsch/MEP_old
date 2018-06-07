class MepAudiosController < ActionController::Base
  def index
    @mep_audios = BsagProjectPartial.find(params[:project_partial_id])
  end
  def show

  end
  def new
    @fault_comment = BsagAudioFaultComment.new
    @mep_audio = BsagMepAudio.new
  end
  def create
    @project_partial = BsagProjectPartial.find {params[:bsag_project_partial_id]}
    @mep_audio = @project_partial.mep_audios.create(meo_audio_params)
    redirect_to project_project_partial(@project_partial)
  end
  def create
    @mep_audio = BsagMepAudio.new(mep_audio_params)
  end

  def fault_comments
    @fault_comment = BsagAudioFault.all
  end

  private
    def mep_audio_params
      params.require(:bsag_mep_audio).permit( :bsag_project_partial_id,
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
                                              :bsag_mep_evaluation_id,
                                              fault_comments_attributes: [ :bsag_audio_fault_id, :comment ] )
    end
end
