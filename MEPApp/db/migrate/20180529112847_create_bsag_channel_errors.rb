class CreateBsagChannelErrors < ActiveRecord::Migration
  def change
    create_table :bsag_channel_errors do |t|
      t.string :name, limit: 20

      t.timestamps null: false
    end
    add_index :bsag_channel_errors, :name, unique: true
  end
end
