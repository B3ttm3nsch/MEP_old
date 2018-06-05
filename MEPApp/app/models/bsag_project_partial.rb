class BsagProjectPartial < ActiveRecord::Base
  belongs_to :project, :class_name => "Tblproject", :foreign_key => "project_id"
  has_many :meps, class_name: BsagMepAudio, :foreign_key => "bsag_project_partial_id"
end