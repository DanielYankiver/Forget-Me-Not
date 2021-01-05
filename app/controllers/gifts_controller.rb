class GiftsController < ApplicationController
    def index
        @gifts = Gift.all 
    end 

    def show
        @gift = Gift.find(params[:id])
    end 

    def new 
       @gift = Gift.new 
    end 

    def create 
        @gift = Gift.create(gift_params)
        redirect_to gift_path(@gift)
    end 

    def edit 
        @gift = Gift.find(params[:id])
    end 

    def update 
        @gift = Gift.find(params[:id])
        @gift.update(gift_params)
        redirect_to gift_path(@gift)
    end 

    def destroy 
        @gift = gift.find(params[:id])
        @gift.destroy
        redirect_to gifts_path 
    end 

    private 

    def gift_params
        params.require(:gift).permit(:event_id, :title, :body, :image)
    end 
    
end
