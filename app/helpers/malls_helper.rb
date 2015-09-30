module MallsHelper
  def self.validate_params(params)
    mall_name = params['mall_name']
    mall_lat = params['mall_lat']
    mall_lng = params['mall_lng']
    mall_location = params['mall_location']
    mall_ref_name = params['mall_ref_name']
    mall_city = params['mall_city']
    mall_ref_number = params['mall_ref_number']
    if(mall_name ==nil or mall_city == nil or mall_lat == nil or mall_lng == nil or mall_location == nil or mall_ref_number == nil or mall_ref_name == nil )
      return false
    else
      return true
    end
  end
end