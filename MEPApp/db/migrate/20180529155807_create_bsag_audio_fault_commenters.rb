class CreateBsagAudioFaultCommenters < ActiveRecord::Migration
  def change
    create_table :bsag_audio_fault_commenters do |t|
      t.string :comment
      t.references :bsag_mep_audio, null: false, index: true, foreign_key: true
      t.references :bsag_audio_fault, null: false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
