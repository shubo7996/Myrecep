class ChangeNames < ActiveRecord::Migration[5.1]
  def change
		rename_column :recipes, :desciption , :description
  end
end
