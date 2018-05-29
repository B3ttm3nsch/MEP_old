class BsagAudioFaultCommenter < ActiveRecord::Base
  belongs_to :bsag_mep_audio
  belongs_to :bsag_audio_fault
end
