module UsersHelper
  def self.validate_params(params)
    if(params['name'] != nil and params['email'] != nil and params['phone'] != nil)
      return true
    else
      return false
    end
  end
end