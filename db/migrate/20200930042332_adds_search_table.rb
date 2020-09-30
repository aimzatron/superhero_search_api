class AddsSearchTable < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
     t.string :criteria, null: false

     t.timestamps
     t.index :criteria, unique: true
   end
  end
end
