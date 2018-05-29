class CreateBsagMepEvaluations < ActiveRecord::Migration
  def change
    create_table :bsag_mep_evaluations do |t|
      t.string :name, limit: 20

      t.timestamps null: false
    end
    add_index :bsag_mep_evaluations, :name, unique: true
  end
end
