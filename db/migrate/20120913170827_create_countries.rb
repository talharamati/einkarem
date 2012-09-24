class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :nameHeb
      t.string :name
      t.string :code
    end
  end
end
