class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :country
      t.string :passport
      t.date :birthday
      t.string :university
      t.integer :year
      t.date :arrivalDate
      t.string :languages
      t.string :pastDepartments
      t.string :status
      t.integer :payment

      t.timestamps
    end
  end
end
