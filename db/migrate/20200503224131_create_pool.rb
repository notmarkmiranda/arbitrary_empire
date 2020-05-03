class CreatePool < ActiveRecord::Migration[6.0]
  def change
    create_table :pools do |t|
      t.references :league, null: false, foreign_key: true
      t.string :name
      t.datetime :bet_cut_off_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
