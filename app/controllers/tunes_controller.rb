class TunesController < ApplicationController
  before_action :set_band
  before_action :set_tune, only: [:show, :edit, :update, :destroy]

  def index
    @tunes = @band.tunes
  end

  def show
  end

  def new
    @tune = @band.tunes.new
  end

  def edit
  end

  def create
    @tune = @band.tunes.new(tune_params)

    if @tune.save
      redirect_to [@band, @tune]
    else
      render :new
    end
  end

  def update
    if @tune.update(tune_params)
      redirect_to [@band, @tune]
    else
      render :edit
    end
  end

  def destroy
    @tune.destroy
    redirect_to band_tunes_path
  end

  private
    def set_band
      @band = Band.find(params[:band_id])
    end

    def set_tune
      @tune = Tune.find(params[:id])
    end

    def tune_params
      params.require(:tune).permit(:name, :genre)
    end
end
