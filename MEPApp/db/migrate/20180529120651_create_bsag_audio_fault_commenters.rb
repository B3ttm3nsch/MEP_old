class CreateBsagAudioFaultCommenters < ActiveRecord::Migration
  def change
    create_table :bsag_audio_fault_commenters do |t|
      t.string :comment
      t.references :bsag_audio_fault, index: true, foreign_key: true
      t.references :bsag_mep_audio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
