class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  before_filter :authorize

  def set_locale
    I18n.locale = :he # extract_locale_from_subdomain || I18n.default_locale
  end

  def user_signed_in?
    !session[:user_id].nil?
  end

  def authorize
    unless user_signed_in?
      redirect_to root_path
      false
    end
  end

end
