class MallsController < ApplicationController
  include MallsHelper
  def create_mall
    if(!MallsHelper.validate_params(params))
      render status: 422, json: {:error => {:reason => "PARAMS MISSING", :text => "mandatory params missing" }}
      return
    end
    begin
      attributes = {
      name: params['mall_name'],
      lat: params['mall_lat'],
      lng: params['mall_lng'],
      location: params['mall_location'],
      ref_name: params['mall_ref_name'],
      ref_phone: params['mall_ref_number'],
      website: params['mall_website'],
      city: params['mall_city']
      }
      mall = Mall.new(attributes)
      if(mall.save!)
        Rails.logger.info "MallsController:Created successfully"
        render status: 200, json: {:text => "successful"}
        return
      else
        Rails.logger.error "MallsController:Create something went wrong in save"
        render status: 422, json: {:error => {:reason => "NOT SAVED", :text =>"save not successfull"}}
      end
    rescue Exception => e
      Rails.logger.error "Execption #{e.inspect} and #{e.bactrace}"
      render status: 422, json: {:error => {:reason => "EXECPTION", :text => "#{e.inspect} #{e.backtrace}"}}
    end
  end
end