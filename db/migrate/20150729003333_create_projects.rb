class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :positiontitle
      t.text :description
      t.string :companyname
      t.string :website
      t.string :city
      t.string :contact01
      t.string :contact01email
      t.string :contact01phone
      t.string :contact02
      t.string :contact02email
      t.string :contact02phone
      t.string :status
      t.text :comments

      t.timestamps null: false
    end
  end
end
