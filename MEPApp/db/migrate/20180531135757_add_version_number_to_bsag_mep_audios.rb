class AddVersionNumberToBsagMepAudios < ActiveRecord::Migration
  def change
    add_column :bsag_mep_audios, :version_number, :integer, limit: 2, null: false, after: :bsag_mep_version_id
  end
end
