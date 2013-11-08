class CansController < ApplicationController
  before_action :set_can, only: [:show, :edit, :update, :destroy]

  # GET /cans
  # GET /cans.json
  def index
    @cans = Can.all
  end

  # GET /cans/1
  # GET /cans/1.json
  def show
  end

  # GET /cans/new
  def new
    @can = Can.new
  end

  # GET /cans/1/edit
  def edit
  end

  # POST /cans
  # POST /cans.json
  def create
    @can = Can.new(can_params)

    respond_to do |format|
      if @can.save
        format.html { redirect_to @can, notice: 'Can was successfully created.' }
        format.json { render action: 'show', status: :created, location: @can }
      else
        format.html { render action: 'new' }
        format.json { render json: @can.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cans/1
  # PATCH/PUT /cans/1.json
  def update
    respond_to do |format|
      if @can.update(can_params)
        format.html { redirect_to @can, notice: 'Can was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @can.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cans/1
  # DELETE /cans/1.json
  def destroy
    @can.destroy
    respond_to do |format|
      format.html { redirect_to cans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_can
      @can = Can.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def can_params
      params.require(:can).permit(:name, :price, :qua)
    end
end
