class AddQuestion1ToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :question1, :string
  end
end
