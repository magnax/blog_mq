class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
