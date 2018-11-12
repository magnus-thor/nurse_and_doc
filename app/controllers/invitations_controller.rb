# frozen_string_literal: true

class InvitationsController < Devise::InvitationsController


    def create
        super do 
            message = " Currently logged in as #{current_user.email}" if user_signed_in?
            set_flash_message :notice, "RSC user #{resource.email} created. #{message}."
        end
    end
  def invite_resource
    super do |u|
      u.region = current_user.region
      u.save
    end
  end


  protected 
  def set_flash_message(key, message, options = {})
    if options[:now]
      flash.now[key] = message 
    else
      flash[key] = message
    end
  end
end
