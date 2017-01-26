class SimulateCar

  def initialize(make, year)
    @make = make
    @year = year
    @speed = 0
    @lights = "off"
    @parking_brake = "on"
    @signal = "off"
  end

  def make
    @make
  end

  def year
    @year
  end

  def speed
    @speed
  end

  def lights
   @lights
 end

 def lights_on
   @lights = "on"
 end

 def lights_off
   @lights = "off"
 end

 def lights_on?
   if (@lights == "on")
     puts true
   else
     puts false
   end
 end



 def signal_left
   @signal = "left"
 end

 def signal_right
   @signal = "right"
 end

 def signal_off
   @signal = "off"
 end


 def parking_brake
   if (@parking_brake == "on")
     @parking_brake = "off"
   else
     @parking_brake = "on"
   end
 end

 def parking_brake_on
   @parking_brake = "on"
 end

 def parking_brake_off
   @parking_brakeghts = "off"
 end

 def parking_brake_on?
   if (@parking_brake == "on")
     puts true
   else
     puts false
   end
 end


 def accelerate
   @speed = @speed + 10
 end

 def brake
   if @speed <= 6
     @speed = @speed - @speed
   else
     @speed = @speed - 7
   end
 end

end
