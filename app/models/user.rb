class User < ActiveRecord::Base
has_many :waiting_lists
has_many :restaurants, through: :waiting_lists 
end