class BookingsController < ApplicationController
  before_action :booking_find, except: %i[new create]
  def new
    @booking = Booking.new
    @booking.passengers.build
    @flight = Flight.find_by(id: params[:flight_id])
    @passengers_num = params[:num_tickets].to_i
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      redirect_to root_path
    end
  end

  def show
  end

  def edit
    
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking
    else
      redirect_to edit_booking_path(@booking)
    end
    debugger
  end

  def destroy
    
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email])
  end

  def booking_find
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end
end
