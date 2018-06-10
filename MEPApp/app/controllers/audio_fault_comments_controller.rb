class AudioFaultCommentsController < ActionController::Base
  def create
    @mep_audio = BsagMepAudio.find(params[:bsag_mep_audio_id])
    #@audio_fault = BsagAudioFault.find(params[:bsag_audio_fault_id])
    @audio_fault_comment = @article.comments.create(audio_fault_comment_params)
    redirect_to project_project_partial_mep_audio(@mep_audio)
  end

  def destroy
    #binding.pry
    #@mep_audio = BsagMepAudio.find(params[:bsag_mep_audio_id])
    #@audio_fault = BsagAudioFault.find(params[:bsag_audio_fault_id])
    #@audio_fault_comment = @mep_audio.fault_comments.find(params[:id])
    @audio_fault_comment = BsagAudioFaultComment.find(params[:id])
    @audio_fault_comment.destroy
    redirect_to project_project_partial_mep_audio(@mep_audio)
  end

  private
  def audio_fault_comment_params
    params.require(:bsag_audio_fault_comment).permit(:bsag_mep_audio_id, :bsag_audio_fault_id, :comment)
  end
end
