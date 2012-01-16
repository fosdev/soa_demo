class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:menu_items) { MenuItem.all }
end
