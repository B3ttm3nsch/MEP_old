class BsagMepAudio < ActiveRecord::Base
  belongs_to :project_partial, :class_name => "BsagProjectPartial"
  belongs_to :audio_type, :class_name => "BsagAudioType"
  belongs_to :mep_version, :class_name => "BsagMepVersion"
  belongs_to :audio_format, :class_name => "BsagAudioFormat"
  belongs_to :audio_speed, :class_name => "BsagAudioSpeed"
  belongs_to :channel_error, :class_name => "BsagChannelError"
  belongs_to :evaluation, :class_name => "BsagMepEvaluation"
  has_many :fault_comments, :class_name => "BsagAudioFaultComment", foreign_key: "bsag_mep_audio_id"
  has_many :audio_faults, :class_name => "BsagAudioFault", through: :fault_comments

  accepts_nested_attributes_for :fault_comments, allow_destroy: true

  validates :version_number, :uniqueness => { :scope => [:project_partial, :mep_version] }
end
