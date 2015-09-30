class UsersController < ApplicationController
  include UsersHelper
  def create_user
    if(!UsersHelper.validate_params(params))
      render status: 422, json: {:error => {:reason => "PARAMS MISSING", :text => "mandatory params missing" }}
      return
    end
    begin
      name = params['name']
      email = params['email']
      phone = params['phone']
      user = User.new({customer_name: name, customer_email: email, customer_phone: phone})
      if(user.save!)
        render status: 200, json: {:success => {:text => "successfully saved"}}
        return
      else
        render status: 404, json: {:error => {:reason => "NOT_SAVED", :text => "failed to save"}}
      end
    rescue Exception => e
      render status: 404, json: {:error => {:reason => "EXECPTION", :text => "#{e.inspect} #{e.backtrace}"}}
    end
  end
end