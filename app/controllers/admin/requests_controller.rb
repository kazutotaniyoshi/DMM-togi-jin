class Admin::RequestsController < ApplicationController
  def show
    @request = Request.find(params[:id])
    @inform = Inform.find_or_initialize_by(request_id: @request.id)
    # if @request.inform.id.present?
    #   Inform.find(@request.inform.id)
    # else
    #   Inform.new
    # end
  end
end
