class BsagAudioType < ActiveRecord::Base
  has_many :mep_audios, :class_name => "BsagMepAudio"

  validates :name, :presence => true,
              :length => { :maximum => 20 },
              :uniqueness => true
end
