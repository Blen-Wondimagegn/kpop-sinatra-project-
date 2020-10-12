class KpopGroup < ActiveRecord::Base
belongs_to :user
validates :group_name, :member, :gender, :height, :fav_quote,presence: true
end 
