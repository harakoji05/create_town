class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.integer :image_id
      t.integer :category
      t.string :postal_code
      t.string :address

      t.timestamps
    end
  end
end
