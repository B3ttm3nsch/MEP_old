class CreateBsagAudioTypes < ActiveRecord::Migration
  def change
    create_table :bsag_audio_types do |t|
      t.string :name, limit: 20, null: false

      t.timestamps null: false
    end
    add_index :bsag_audio_types, :name, unique: true
  end
end
