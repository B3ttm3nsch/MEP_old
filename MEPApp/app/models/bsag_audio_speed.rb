class BsagAudioSpeed < ActiveRecord::Base
  has_many :mep_audios, :class_name => "BsagMepAudio"

  validates :speed_before_type_cast, :presence => true,
              :numericality => true,
              :format => { :with => /\A\d{1,2}(?!\d)(.\d{0,3})?\z/ }
  validates :speed, :uniqueness => true
end