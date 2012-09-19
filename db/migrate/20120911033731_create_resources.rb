class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :path
      t.string :type
      t.references :student

      t.timestamps
    end
    add_index :resources, :student_id
  end
end
