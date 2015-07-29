class CreateJoinTableCoverletterResume < ActiveRecord::Migration
  def change
    create_join_table :coverletters, :resumes do |t|
      # t.index [:coverletter_id, :resume_id]
      # t.index [:resume_id, :coverletter_id]
    end
  end
end
