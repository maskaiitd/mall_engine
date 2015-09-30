class Mall < ActiveRecord::Base
  attr_accessible :name, :id, :location, :ref_name, :ref_phone, :website, :lat, :lng, :city
end