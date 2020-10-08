class AddColumnToKpopGroupsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :kpop_groups, :user_id, :integer
  end
end
