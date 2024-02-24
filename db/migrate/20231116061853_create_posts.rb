class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :store
      t.string :category
      t.string :image
      t.text :comment
      t.string :menu

      t.timestamps
    end
  end
end
