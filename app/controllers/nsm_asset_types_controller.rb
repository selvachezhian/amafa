class NsmAssetTypesController < ApplicationController
  before_action :set_nsm_asset_type, only: [:show, :edit, :update, :destroy]

  # GET /nsm_asset_types
  # GET /nsm_asset_types.json
  def index
    @nsm_asset_types = NsmAssetType.all
    respond_to do |format|
      format.html
      format.xls
    end
  end

  # GET /nsm_asset_types/1
  # GET /nsm_asset_types/1.json
  def show
  end

  # GET /nsm_asset_types/new
  def new
    @nsm_asset_type = NsmAssetType.new
  end

  # GET /nsm_asset_types/1/edit
  def edit
  end

  # POST /nsm_asset_types
  # POST /nsm_asset_types.json
  def create
    @nsm_asset_type = NsmAssetType.new(nsm_asset_type_params)

    respond_to do |format|
      if @nsm_asset_type.save
        format.html { redirect_to @nsm_asset_type, notice: 'Nsm asset type was successfully created.' }
        format.json { render :show, status: :created, location: @nsm_asset_type }
      else
        format.html { render :new }
        format.json { render json: @nsm_asset_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nsm_asset_types/1
  # PATCH/PUT /nsm_asset_types/1.json
  def update
    respond_to do |format|
      if @nsm_asset_type.update(nsm_asset_type_params)
        format.html { redirect_to @nsm_asset_type, notice: 'Nsm asset type was successfully updated.' }
        format.json { render :show, status: :ok, location: @nsm_asset_type }
      else
        format.html { render :edit }
        format.json { render json: @nsm_asset_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nsm_asset_types/1
  # DELETE /nsm_asset_types/1.json
  def destroy
    @nsm_asset_type.destroy
    respond_to do |format|
      format.html { redirect_to nsm_asset_types_url, notice: 'Nsm asset type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nsm_asset_type
      @nsm_asset_type = NsmAssetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nsm_asset_type_params
      params.require(:nsm_asset_type).permit(:name, :description, :charger, :laptop_bag)
    end
end
