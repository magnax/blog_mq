class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.belongs_to :blog, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
