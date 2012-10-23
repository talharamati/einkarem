class AddMailToStudent < ActiveRecord::Migration
  def change
    add_column :students, :mail, :string
  end
end
