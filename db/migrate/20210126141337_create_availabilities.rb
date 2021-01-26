class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.datetime :date,     null: false
      t.integer :price,     null: false
      t.boolean :available, null: false

      t.belongs_to :period, index: true

      t.timestamps
    end
  end
end
