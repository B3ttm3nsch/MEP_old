class BsagAudioFaultCommenter < ActiveRecord::Base
  belongs_to :bsag_audio_fault
  belongs_to :bsag_mep_audio
end
