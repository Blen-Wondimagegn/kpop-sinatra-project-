class CreateKpopGroupsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :kpop_groups do |t|
      t.string :group
      t.string :members
      t.string :gender
      t.float  :height
      t.timestamps
    end 
  end
end
