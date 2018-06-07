class BsagMepEvaluation < ActiveRecord::Base
  has_many :mep_audios, :class_name => "BsagMepAudio", foreign_key: "bsag_mep_evaluation_id"

  validates :name, :presence => true,
              :length => { :maximum => 20 },
              :uniqueness => true
end
