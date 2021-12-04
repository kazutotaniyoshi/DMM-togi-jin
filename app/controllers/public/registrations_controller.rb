class Public::RegistrationsController < ApplicationController
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :tel, :password, :password_confirmation])
  end
end
