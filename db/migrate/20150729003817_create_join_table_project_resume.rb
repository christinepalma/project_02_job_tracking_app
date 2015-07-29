class CreateJoinTableProjectResume < ActiveRecord::Migration
  def change
    create_join_table :projects, :resumes do |t|
      # t.index [:project_id, :resume_id]
      # t.index [:resume_id, :project_id]
    end
  end
end
