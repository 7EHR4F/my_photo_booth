class PhotoCartsController < ApplicationController
  # GET /photo_carts
  # GET /photo_carts.json

  def index
    @photo_carts = PhotoCart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photo_carts }
    end
  end

  # GET /photo_carts/1
  # GET /photo_carts/1.json
  def show
    @photo_cart = PhotoCart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo_cart }
    end
  end

  # GET /photo_carts/new
  # GET /photo_carts/new.json
  def new
    @photo_cart = PhotoCart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo_cart }
    end
  end

  # GET /photo_carts/1/edit
  def edit
    @photo_cart = PhotoCart.find(params[:id])
  end

  # POST /photo_carts
  # POST /photo_carts.json
  def create
    if current_cart.photos
      if current_cart.photos << Photo.find(params[:photo_id]) 

        respond_to do |format|
          format.html { render :nothing => true }
        end
      end
    end
  end

  def add_to_cart
    if current_cart.photos
      if current_cart.photos << Photo.find(params[:photo_id]) 

        respond_to do |format|
          format.html { render :nothing => true }
        end
      end
    end
  end
    def remove_from_cart
      current_cart.photo_carts.where(photo_id: params[:photo_id]).delete_all
      respond_to do |format|
        format.html { render :nothing => true }
      end

    end
  # PUT /photo_carts/1
  # PUT /photo_carts/1.json
  def update
    @photo_cart = PhotoCart.find(params[:id])

    respond_to do |format|
      if @photo_cart.update_attributes(params[:photo_cart])
        format.html { redirect_to @photo_cart, notice: 'Photo cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_carts/1
  # DELETE /photo_carts/1.json
  def destroy
    current_cart.photo_carts.where(photo_id: params[:photo_id]).delete_all
    respond_to do |format|
      format.html { render :nothing => true }
    end
  end

end
