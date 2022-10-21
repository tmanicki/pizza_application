class AddTitleToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :title, :integer
  end
end
