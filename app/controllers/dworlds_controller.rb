class DworldsController < ApplicationController
  before_action :set_dworld, only: [:show, :edit, :update, :destroy]

  # GET /dworlds
  # GET /dworlds.json
  def index
    @dworlds = Dworld.all
  end

  # GET /dworlds/1
  # GET /dworlds/1.json
  def show
  end

  # GET /dworlds/new
  def new
    @dworld = Dworld.new
  end

  # GET /dworlds/1/edit
  def edit
  end

  # POST /dworlds
  # POST /dworlds.json
  def create
    @dworld = Dworld.new(dworld_params)

    respond_to do |format|
      if @dworld.save
        format.html { redirect_to @dworld, notice: 'Info was successfully send to us.' }
        format.json { render action: 'show', status: :created, location: @dworld }
      else
        format.html { render action: 'new' }
        format.json { render json: @dworld.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dworlds/1
  # PATCH/PUT /dworlds/1.json
  def update
    respond_to do |format|
      if @dworld.update(dworld_params)
        format.html { redirect_to @dworld, notice: 'Info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dworld.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dworlds/1
  # DELETE /dworlds/1.json
  def destroy
    @dworld.destroy
    respond_to do |format|
      format.html { redirect_to dworlds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dworld
      @dworld = Dworld.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dworld_params
      params.require(:dworld).permit(:name, :email, :question, :datesend)
    end
end
