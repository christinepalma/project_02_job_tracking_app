class CreateCoverletters < ActiveRecord::Migration
  def change
    create_table :coverletters do |t|
      t.string :coverlettername
      t.string :recipient
      t.string :company
      t.string :dateuploaded

      t.timestamps null: false
    end
  end
end
