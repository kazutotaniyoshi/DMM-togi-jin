class Admin::RequestsController < ApplicationController
  def show
    @request = Requests.find(params[:id])
  end
end
