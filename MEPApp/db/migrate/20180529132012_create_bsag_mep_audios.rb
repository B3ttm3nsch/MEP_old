class CreateBsagMepAudios < ActiveRecord::Migration
  def change
    create_table :bsag_mep_audios do |t|
      t.references :bsag_project_partial, index: true, foreign_key: true
      t.references :bsag_audio_type, index: true, foreign_key: true
      t.date :receiving_date
      t.references :bsag_mep_version, index: true, foreign_key: true
      t.string :version_comment, limit: 30
      t.references :bsag_audio_format, index: true, foreign_key: true
      t.references :bsag_audio_speed, index: true, foreign_key: true
      t.boolean :is_complete
      t.string :is_complete_comment
      t.boolean :is_in_sync
      t.string :is_in_sync_comment
      t.decimal :dbtp_max, precision: 3, scale: 1
      t.decimal :lra, precision: 3, scale: 1
      t.decimal :lufs, precision: 3, scale: 1
      t.references :bsag_channel_error, index: true, foreign_key: true
      t.string :channel_error_comment
      t.references :bsag_mep_evaluation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
