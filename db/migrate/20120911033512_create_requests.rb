class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :department
      t.string :hospital
      t.date :beginDate
      t.date :finishDate
      t.references :student
      t.string :status

      t.timestamps
    end

    add_index :requests, :student_id
  end
end
