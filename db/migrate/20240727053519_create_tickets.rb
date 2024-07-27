class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.integer :amount, null: false
      t.boolean :used, default: false
      # t.string :token, null: false

      t.timestamps

      # t.index :token, unique: true
    end
  end
end
