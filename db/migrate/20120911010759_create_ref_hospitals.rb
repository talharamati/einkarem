class CreateRefHospitals < ActiveRecord::Migration
  def change
    create_table :ref_hospitals do |t|
      t.string :name

      t.timestamps
    end
  end
end
