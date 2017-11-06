class AddFirstNameToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :first_name, :string
  end
end
