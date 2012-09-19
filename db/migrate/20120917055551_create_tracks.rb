class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.boolean :dorms
      t.boolean :payment
      t.boolean :laundry
      t.boolean :library
      t.boolean :laundryBack
      t.boolean :libraryBack
      t.string :dormsC
      t.string :paymentC
      t.string :laundryC
      t.string :libraryC
      t.string :laundryBackC
      t.string :libraryBackC
      t.references :student

      t.timestamps
    end
    add_index :tracks, :student_id
  end
end
