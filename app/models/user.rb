class User < ActiveRecord::Base
  attr_accessible :customer_name, :customer_phone, :customer_email
end