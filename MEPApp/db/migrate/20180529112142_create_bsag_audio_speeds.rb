class CreateBsagAudioSpeeds < ActiveRecord::Migration
  def change
    create_table :bsag_audio_speeds do |t|
      t.decimal :speed, precision: 5, scale: 3, null: false

      t.timestamps null: false
    end
    add_index :bsag_audio_speeds, :speed, unique: true
  end
end
