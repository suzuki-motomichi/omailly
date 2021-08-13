class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.string :title, null: false
      t.text :content, null: false
      t.integer :last_day

      t.timestamps
    end
  end
end
