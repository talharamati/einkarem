class CreateRefDepartments < ActiveRecord::Migration
  def change
    create_table :ref_departments do |t|
      t.string :name
    end
  end
end
