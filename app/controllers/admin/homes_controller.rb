class Admin::HomesController < ApplicationController
   before_action :authenticate_admin!
  def top
    @requests = Request.all
  end
end
