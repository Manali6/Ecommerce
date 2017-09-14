class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :categories
before_action :brands

#config.action_controller.include_all_helpers = false

  def categories
  	@categories = Category.all
end


  def brands
  	@brands = []
  Product.all.each do |product|
      if @brands.include?(product.brand) == false
        @brands.push(product.brand)
      end
    end
     return @brands
   end

def remote_ip
   if request.remote_ip == '127.0.01'

    "#{ENV['my_url']}"

  else
    request.remote_ip
  end
end



 end
