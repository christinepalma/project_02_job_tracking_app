class AddUserToJobprospect < ActiveRecord::Migration
  def change
    add_reference :jobprospects, :user, index: true, foreign_key: true
  end
end
