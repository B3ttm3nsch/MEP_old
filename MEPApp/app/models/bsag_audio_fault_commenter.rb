class BsagAudioFaultCommenter < ActiveRecord::Base
  belongs_to :BsagMepAudio
  belongs_to :BsagAudioFault
end
