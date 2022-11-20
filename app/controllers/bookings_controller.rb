class BookingsController < ApplicationController
 before_action :set_booking, only: %i[show edit update destroy]


 def index 
  @bookings = Booking.all
 end

 def show 
 end

 def new 
  @booking = Booking.new
 end

 def create 
  @booking = Booking.new(booking_params)
  respond_to do |format|
   if @booking.save 
    format.html { redirect_to booking_path(@booking), notice: "Booking was successfully created!"}
   else 
    format.html { render :new , staus: :unprocessable_entity}
   end
  end
 end

 def edit 
  
 end

 def update 
  respond_to do |format|
   if @booking.update(booking_params)
     format.html { redirect_to booking_path(@booking), notice: "Booking was successfully updated!"}
   else 
    format.html { render :new , status: :unprocessable_entity }
   end
  end
 end

 def destroy 
   @booking.destroy
   respond_to do |format|
      format.html {redirect_to bookings_path, notice: "Booking was successfully deleted! "}
   end
 end



 private 
 def set_booking
   @booking = Booking.find(params[:id])
 end

 def booking_params
  params.require(:booking).permit(:room_id, :start, :end, :purpose)
 end

end
