class CreateBsagAudioFormats < ActiveRecord::Migration
  def change
    create_table :bsag_audio_formats do |t|
      t.string :name, limit: 10, null: false

      t.timestamps null: false
    end
    add_index :bsag_audio_formats, :name, unique: true
  end
end
