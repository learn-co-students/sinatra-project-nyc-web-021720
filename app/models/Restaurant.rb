class Restaurant < ActiveRecord::Base
    has_many :watch
    has_many :user, through: :watch
end