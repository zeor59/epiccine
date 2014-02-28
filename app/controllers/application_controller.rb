#encoding: utf-8

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_locale

  def default_url_options(options={})
    { locale: I18n.locale }
  end
  
  private

  def set_locale
  	I18n.locale = params[:locale] || :fr
  end
end
