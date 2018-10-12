class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.string :title, :limit => 50
      t.string :summary, :limit => 150
      t.text :content
      t.integer :user_id
      t.string :title_image_url

      t.timestamps
    end

    add_foreign_key :blog_posts, :users, column: :user_id
  end
end
