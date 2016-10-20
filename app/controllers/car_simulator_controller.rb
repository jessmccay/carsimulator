class CarSimulatorController < ApplicationController
  def index
    @new_car = YAML.load(session[:new_car])
  end

  def create
    if params.has_key?(:make) && params.has_key?(:year)
      new_car = SimulateCar.new(params[:make], params[:year])
      session[:new_car] = new_car.to_yaml
      redirect_to "/car_simulator/index"
    else
      render '/car_simulator/create'
    end
  end

  def make
  end

  def accelerate
    @new_car = YAML.load(session[:new_car])
    @new_car.accelerate
    session[:new_car] = @new_car.to_yaml
    render '/car_simulator/index'
  end

  def brake
   @new_car = YAML.load(session[:new_car])
   @new_car.brake
   session[:new_car] = @new_car.to_yaml
   render '/car_simulator/index'
  end

  def speed
  end

  def lights
  end

  def toggle
  end

  def parking_brake
  end

  def set_parking_brake
  end
end
