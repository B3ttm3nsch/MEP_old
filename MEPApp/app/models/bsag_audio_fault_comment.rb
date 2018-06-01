class BsagAudioFaultComment < ActiveRecord::Base
  belongs_to :mep_audio, :class_name => "BsagMepAudio"
  belongs_to :audio_fault, :class_name => "BsagAudioFault"
end
