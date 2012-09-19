class CreateManagments < ActiveRecord::Migration
  def change
    create_table :managments do |t|

      t.timestamps
    end
  end
end
