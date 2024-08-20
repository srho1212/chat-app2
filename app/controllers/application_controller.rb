class ApplicationController < ActionController::Base
  before_action :autheticate_user!
  before_action :confingure_permitted_parameters, if: : device_controller?

 private
 def confingure_permitted_parameters
  device_parameter_sanitizer.permit(:sign_up,keys:[:name])
 end
end
