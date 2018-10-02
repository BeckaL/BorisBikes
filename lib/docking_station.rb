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
    if @number_of_bikes == 0
      puts 'no bikes remaining in station'
    else

      @number_of_bikes -= 1
      return Bike.new
    end
  end

  def dock(bike)
    @number_of_bikes += 1
  end
end
