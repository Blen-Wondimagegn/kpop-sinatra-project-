class CreateKpopGroupsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :kpop_groups do |t|
      t.string :group_name
      t.string :member 
      t.string :gender 
      t.string :height 
      t.string :fav_quote
      t.timestamps
    end 
  end
end
