require_relative 'bike.rb'

class DockingStation

  attr_reader :number_of_bikes

  def initialize(number_of_bikes = 1)
    @number_of_bikes = number_of_bikes
  end

  def check_bikes
    @number_of_bikes
  end

  def release_bike
    fail 'no bikes remaining in station' unless @number_of_bikes > 0
      @number_of_bikes -= 1
      return Bike.new
  end

  def dock(bike)
    # if @number_of_bikes > 0
    #   puts 'dock at capacity'
    #   @number_of_bikes
    # else
    #   @number_of_bikes += 1
    # end

     fail 'dock at capacity' unless @number_of_bikes == 0
     @number_of_bikes += 1
  end
end
