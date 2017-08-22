class MembersController < ApplicationController
	before_action :Admins_authorise, only:[:new, :create]
  before_action :authorise, only:[:list]
  before_action :set_member, only: [:new, :create, :list]
  before_action :set_franchise, only: [:new, :create, :list]
	include ApplicationHelper
	def new
    @member = @franchise.members.new
  end

  def create
    @member = @franchise.members.new(users_params)
    if @member.save
      flash[:success] = "Member Saved!"
      #send_notification(@member)
      redirect_to franchise_pages_path(@franchise)
    else
      redirect_to new_franchise_member_path(@franchise)
    end
  end
 	def list
 		@members = @franchise.members.all
 	end

  private

  def set_member
    @member = Member.find_by(params[:id])
  end

  def users_params
    params.require(:member).permit(:name, :phone, :address)
  end
end
