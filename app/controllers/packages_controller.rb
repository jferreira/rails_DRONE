class PackagesController < ApplicationController

  def index
    @packages = Package.all
  end

  def new
    @package = Package.new
  end

  def create
    current_user

    @package = Package.new(package_params)

    # Hard code
    @package.user_id = 1
    if @package.save!
      redirect_to packages_path
    else
      render :new
    end
  end

  # def show
  #   @package = Package.find(params[:id])
  #   # @bookings = Booking.find(@package.booking_ids)
  #   # The above may be require in order to display the notification in the show page?
  # end
  # def edit
  #   @package = Package.find(params[:id])
  # end
  # def update
  #   if @package.update(package_params)
  #     # redirect_to ___________
  #   else
  #     render :edit
  #   end
  # end
  # def destroy
  #   @package.destroy
  #   package.save
  # end

  # private

  def package_params
  params.require(:package).permit(:title, :description, :url_image, :price)
  end

end



