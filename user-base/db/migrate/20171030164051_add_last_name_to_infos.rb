class AddLastNameToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :last_name, :string
  end
end
