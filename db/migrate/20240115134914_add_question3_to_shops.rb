class AddQuestion3ToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :question3, :string
  end
end
