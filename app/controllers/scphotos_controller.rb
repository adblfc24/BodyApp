class ScphotosController < ApplicationController
  before_action :set_scphoto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @scphotos = Scphoto.all
    respond_with(@scphotos)
  end

  def show
    respond_with(@scphoto)
  end

  def new
    @scphoto = Scphoto.new
    respond_with(@scphoto)
  end

  def edit
  end

  def create
    @scphoto = Scphoto.new(scphoto_params)
    @scphoto.save
    respond_with(@scphoto)
  end

  def update
    @scphoto.update(scphoto_params)
    respond_with(@scphoto)
  end

  def destroy
    @scphoto.destroy
    respond_with(@scphoto)
  end

  private
    def set_scphoto
      @scphoto = Scphoto.find(params[:id])
    end

    def scphoto_params
      params.require(:scphoto).permit(:title, :description, :file)
    end
end
