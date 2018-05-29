class CreateBsagMepVersions < ActiveRecord::Migration
  def change
    create_table :bsag_mep_versions do |t|
      t.string :name, limit: 10, null: false

      t.timestamps null: false
    end
    add_index :bsag_mep_versions, :name, unique: true
  end
end
