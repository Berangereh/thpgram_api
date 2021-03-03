class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :destroy, :update]
  
  def index
      # this orders all pictures starting with the last created
      @pictures = Picture.all.order(created_at: :desc)
      render json: @pictures, status: :ok
    end
  # creates an instance of a picture and returns the status
    # "created" if the action is successful
    def create
      @picture = Picture.create!(picture_params)
      render json: @picture, status: :created
    end
  # allows us add or reduce likes from the front end
    def update
    @pictures # we need to send the entire set of pictures back.
    @picture.update(picture_params)# update a specific pic
      
    end
  # deletes a picture
    def destroy
      @picture.destroy
      head :no_content
    end
  # displays more info about a picture
    def show
      render json: @picture, status: :ok
    end
  private
      # In rails we need this method to allow us collect/whitelist
      # information from the user to store in our DB
      def picture_params
        params.permit(:img_link, :caption, :created_by, :likes, :liked)
      end
  # we need to grab the id of the intended picture 
      # before we can run show more info or delete it. 
      def set_picture
        @picture = Picture.find(params[:id])
      end
end

