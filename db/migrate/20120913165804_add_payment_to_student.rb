class AddPaymentToStudent < ActiveRecord::Migration
  def change
    add_column :students, :payment, :string
  end
end
