class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :categories_displaying

  private
  def categories_displaying
  	@categories = Category.where(parent_id:nil)
  end
end
