class AddUserToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :user, foregin_key: true
  end
end
