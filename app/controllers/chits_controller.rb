class ChitsController < ApplicationController
	before_action :Admins_authorise, only:[:new, :create]
	include ApplicationHelper
	def new
    @chit = Chit.new
  end

  def create
    @chit = Chit.new(users_params)
    if @chit.save
      flash[:success] = "Chit details saved!"
      @caller = Member.find_by_name(@chit.person_called)
      @caller.update_attribute(:chit_id, @chit.id)
      send_chit_details(@chit)
      redirect_to pages_path
    else
      render :new
    end
  end
  def list
 		@chits = Chit.all
 	end

  private

  def users_params
    params.require(:chit).permit(:date, :amount_recieved, :person_called, :bar)
  end
end
