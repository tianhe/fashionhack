class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :zipcode
end
