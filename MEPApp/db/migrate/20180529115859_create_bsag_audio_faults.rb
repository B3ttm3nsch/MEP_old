class CreateBsagAudioFaults < ActiveRecord::Migration
  def change
    create_table :bsag_audio_faults do |t|
      t.string :name, limit: 30, null: false

      t.timestamps null: false
    end
    add_index :bsag_audio_faults, :name, unique: true
  end
end
