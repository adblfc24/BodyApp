class SphtsController < ApplicationController
  before_action :set_spht, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sphts = Spht.all
    respond_with(@sphts)
  end

  def show
    respond_with(@spht)
  end

  def new
    @spht = Spht.new
    respond_with(@spht)
  end

  def edit
  end

  def create
    @spht = Spht.new(spht_params)
    flash[:notice] = 'Spht was successfully created.' if @spht.save
    respond_with(@spht)
  end

  def update
    flash[:notice] = 'Spht was successfully updated.' if @spht.update(spht_params)
    respond_with(@spht)
  end

  def destroy
    @spht.destroy
    respond_with(@spht)
  end

  private
    def set_spht
      @spht = Spht.find(params[:id])
    end

    def spht_params
      params.require(:spht).permit(:title, :description, :file)
    end
end
