class PowersController < ApplicationController


    def index 
        power = Power.all
        render json: power, status: :ok
    end

    def show 
        power = Power.find(params[:id])
        render json: power, status: :ok
    end

    def update 
        power = Power.find(params[:id])
        power.update!(power_params)
        render json: power, status: :ok
    end

    private 

    def power_params
        params.permit(:description)
    end

end
