class BsagAudioFault < ActiveRecord::Base
  has_many :fault_comments, :class_name => "BsagAudioFaultComment"
  has_many :mep_audios, :class_name => "BsagMepAudio", through: :fault_comments

  validates :name, :presence => true,
              :length => { :maximum => 30 },
              :uniqueness => true
end
