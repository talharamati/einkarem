class AddGotDormsToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :got_dorms, :boolean
    add_column :tracks, :got_dorms_c, :string
  end
end
