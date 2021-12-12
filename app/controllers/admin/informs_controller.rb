class Admin::InformsController < ApplicationController

  def create
    @request = Request.find(params[:inform][:request_id])
    @inform = Inform.new(inform_params)
    @inform.request_id = @request.id
    @inform.save
    @request.making_status = params[:inform][:making_status]
    @request.save
    redirect_to  admin_requests_path
  end

  def update
    @request = Request.find(params[:inform][:request_id])
    @inform = Inform.find(params[:id])
    @inform.update(inform_params)
    @request.making_status = params[:inform][:making_status]
    @request.save
    redirect_to  admin_request_path(@request.id)
  end

  def destroy
  end

private

  def inform_params
    params.require(:inform).permit(:inform)
  end
end