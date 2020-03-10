class Restaurant <ActiveRecord::Base
has_many :waiting_lists
has_many :users, through: :waiting_lists  
end