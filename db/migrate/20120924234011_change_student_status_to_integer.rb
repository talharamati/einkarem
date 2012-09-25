class ChangeStudentStatusToInteger < ActiveRecord::Migration
  def change
    remove_column :students, :status
    add_column :students, :status, :integer
  end
end
