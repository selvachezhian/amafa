class NsmAssetsController < ApplicationController
  before_action :set_nsm_asset, only: [:show, :edit, :update, :destroy]

  # GET /nsm_assets
  # GET /nsm_assets.json
  def index
    @nsm_assets = NsmAsset.all
  end

  # GET /nsm_assets/1
  # GET /nsm_assets/1.json
  def show
  end

  # GET /nsm_assets/new
  def new
    @nsm_asset = NsmAsset.new
  end

  # GET /nsm_assets/1/edit
  def edit
  end

  # POST /nsm_assets
  # POST /nsm_assets.json
  def create
    @nsm_asset = NsmAsset.new(nsm_asset_params)

    respond_to do |format|
      if @nsm_asset.save
        format.html { redirect_to @nsm_asset, notice: 'Nsm asset was successfully created.' }
        format.json { render :show, status: :created, location: @nsm_asset }
      else
        format.html { render :new }
        format.json { render json: @nsm_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nsm_assets/1
  # PATCH/PUT /nsm_assets/1.json
  def update
    respond_to do |format|
      if @nsm_asset.update(nsm_asset_params)
        format.html { redirect_to @nsm_asset, notice: 'Nsm asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @nsm_asset }
      else
        format.html { render :edit }
        format.json { render json: @nsm_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nsm_assets/1
  # DELETE /nsm_assets/1.json
  def destroy
    @nsm_asset.destroy
    respond_to do |format|
      format.html { redirect_to nsm_assets_url, notice: 'Nsm asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nsm_asset
      @nsm_asset = NsmAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nsm_asset_params
      params.require(:nsm_asset).permit(:nsm_asset_type_id, :code)
    end
end
