class AddAttachmentRequestFormToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.has_attached_file :request_form
    end
  end

  def self.down
    drop_attached_file :students, :request_form
  end
end
