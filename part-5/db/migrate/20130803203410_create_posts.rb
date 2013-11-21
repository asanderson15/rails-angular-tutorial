class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :contents
      t.string :author
      t.datetime :post_date

      t.timestamps
    end
  end
end
