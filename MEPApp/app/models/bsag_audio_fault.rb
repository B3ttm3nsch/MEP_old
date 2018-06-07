class BsagAudioFault < ActiveRecord::Base
  has_many :audio_fault_comments, :class_name => "BsagAudioFaultComment"
  has_many :mep_audios, :class_name => "BsagMepAudio", through: :audio_fault_comments

  accepts_nested_attributes_for :audio_fault_comments

  validates :name, :presence => true,
              :length => { :maximum => 30 },
              :uniqueness => true
end
