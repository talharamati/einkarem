class AddAttachmentStudyApprovalToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.has_attached_file :study_approval
    end
  end

  def self.down
    drop_attached_file :students, :study_approval
  end
end
