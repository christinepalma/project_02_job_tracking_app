class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :resumename
      t.string :dateuploaded

      t.timestamps null: false
    end
  end
end
