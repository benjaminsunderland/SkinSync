class ParloursController < ApplicationController
  before_action :set_parlour, only: [:show, :edit, :update, :destroy]

  # GET /parlours
  # GET /parlours.json
  def index
    @parlours = Parlour.all
  end

  # GET /parlours/1
  # GET /parlours/1.json
  def show
  end

  # GET /parlours/new
  def new
    @parlour = Parlour.new
  end

  # GET /parlours/1/edit
  def edit
  end

  # POST /parlours
  # POST /parlours.json
  def create
    @parlour = Parlour.new(parlour_params)

    respond_to do |format|
      if @parlour.save
        format.html { redirect_to @parlour, notice: 'Parlour was successfully created.' }
        format.json { render :show, status: :created, location: @parlour }
      else
        format.html { render :new }
        format.json { render json: @parlour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parlours/1
  # PATCH/PUT /parlours/1.json
  def update
    respond_to do |format|
      if @parlour.update(parlour_params)
        format.html { redirect_to @parlour, notice: 'Parlour was successfully updated.' }
        format.json { render :show, status: :ok, location: @parlour }
      else
        format.html { render :edit }
        format.json { render json: @parlour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parlours/1
  # DELETE /parlours/1.json
  def destroy
    @parlour.destroy
    respond_to do |format|
      format.html { redirect_to parlours_url, notice: 'Parlour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parlour
      @parlour = Parlour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parlour_params
      params.require(:parlour).permit(:name, :location, :contact, :description)
    end
end
