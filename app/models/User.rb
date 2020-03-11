class Restaurant < ActiveRecord::Base
    has_many :watch
    has_many :restaurant, through: :watch
end