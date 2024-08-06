class FlatsController < ApplicationController
  before_action :set_flat, only: %i[ show edit update destroy ]

  def index
    @all_flats_count = Flat.count
    if params[:query].present?
      @flats = Flat.where("name LIKE ?", "%#{params[:query]}%")
    else
      @flats = Flat.all
    end
    @flats_count = @flats.count
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat), notice: "The advert was successfully created", status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat), notice: "The advert was successfully updated", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, notice: "The advert was successfully deleted", status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :zip_code, :city, :country, :description, :price_per_nights, :number_of_guests, :picture_url)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
