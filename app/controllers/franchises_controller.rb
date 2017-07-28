class FranchisesController < ApplicationController
	def index
		@franchise = Franchise.all
	end
	def new
		@franchise = Franchise.new
	end
	def create
		@franchise = Franchise.new(franchise_params)
    if @franchise.save
      flash[:success] = "Kurry saved!"
      redirect_to franchises_path
    else
    	flash[:error] = "Kurry not saved!, enter the details correctly"
      render :new
    end
	end
	def show
	end
	def edit
	end
	def update
	end
	def destroy
		
	end

	def franchise_params
    params.require(:franchise).permit(:date, :amount, :person, :title)
  end
end
