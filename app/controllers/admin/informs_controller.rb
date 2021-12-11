class Admin::InformsController < ApplicationController

  def create
    @request = Request.find(params[:id])
    @inform = Inform.new(inform_params)
    @inform.save
    redirect_to  admin_request_path
  end

  def destroy
  end
end

private

  def inform_params
    params.require(:inform).permit(:inform)
  end