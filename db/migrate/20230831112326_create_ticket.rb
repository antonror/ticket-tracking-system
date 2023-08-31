class CreateTicket < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :supplier, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.decimal :price, precision: 10, scale: 2, null: false
      t.integer :seating_id, null: false

      t.timestamps
    end
  end
end
