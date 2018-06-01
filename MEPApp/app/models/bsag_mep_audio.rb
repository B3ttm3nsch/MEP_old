class BsagMepAudio < ActiveRecord::Base
  belongs_to :project_partial, :class_name => "BsagProjectPartial"
  belongs_to :audio_type, :class_name => "BsagAudioType"
  belongs_to :mep_version, :class_name => "BsagMepVersion"
  belongs_to :audio_format, :class_name => "BsagAudioFormat"
  belongs_to :audio_speed, :class_name => "BsagAudioSpeed"
  belongs_to :channel_error, :class_name => "BsagChannelError"
  belongs_to :evaluation, :class_name => "BsagMepEvaluation"

  validates :version_number, :uniqueness => { :scope => [:project_partial, :mep_version] }
end
