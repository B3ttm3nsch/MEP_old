class RenameVersionCommentinBsagMepAudiosToVersionNameExt < ActiveRecord::Migration
  def change
    rename_column :bsag_mep_audios, :version_comment, :version_name_ext
  end
end
