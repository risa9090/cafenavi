class AddQuestion4ToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :question4, :string
  end
end
