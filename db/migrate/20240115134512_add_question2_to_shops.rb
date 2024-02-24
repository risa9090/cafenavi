class AddQuestion2ToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :question2, :string
  end
end
