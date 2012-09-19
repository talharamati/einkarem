class AddAttachmentDormsFormToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.has_attached_file :dorms_form
    end
  end

  def self.down
    drop_attached_file :students, :dorms_form
  end
end
