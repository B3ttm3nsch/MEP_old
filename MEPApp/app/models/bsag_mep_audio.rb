class BsagMepAudio < ActiveRecord::Base
  belongs_to :bsag_project_partial
  belongs_to :bsag_audio_type
  belongs_to :bsag_mep_version
  belongs_to :bsag_audio_format
  belongs_to :bsag_audio_speed
  belongs_to :bsag_channel_error
  belongs_to :bsag_mep_evaluation
end
