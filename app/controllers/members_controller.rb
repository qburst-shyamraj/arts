class MembersController < ApplicationController
	before_action :Admins_authorise, only:[:new, :create]
	include ApplicationHelper
	def new
    @member = Member.new
  end

  def create
    @member = Member.new(users_params)
    if @member.save
      flash[:success] = "Member Saved!"
      send_notification(@member)
      redirect_to pages_path
    else
      render :new
    end
  end

  private

  def users_params
    params.require(:member).permit(:name, :phone, :address)
  end
end
