class TattoosController < ApplicationController
  before_action :set_tattoo, only: [:show, :edit, :update, :destroy]

  # GET /tattoos
  # GET /tattoos.json
  def index
    @tattoos = Tattoo.all
    @filter = [params[:gothic], params[:flowers], params[:animals], params[:butterflies], params[:body_parts]]
    @style_array = ["Gothic", "Flowers", "Animals", "Butterflies"]
    @filter.each_with_index do |style, index|
        @style_array.delete_at(index) if style == nil
    end

    body_parts_objects = BodyPart.all
    @body_part_array = @filter.last.split(',')
    @body_part_array.each do |body_part|
      body_parts_objects.each do |object|
        @tattoo_array_body_part << object.tattoos if object.name == body_part
      end
    end
    styles_objects = Style.all
    @style_array.each do |style|
      styles_objects.each do |object|
        @tattoo_array_styles << object.tattoos if object.name == style
      end
    end

    @unfiltered_tattoo_array = @tattoo_array_body_part + @tattoo_array_styles
    @filter_tattoos = @unfiltered_tattoo_array.detect{ |e| @unfiltered_tattoo_array.count(e) > 1 }

  end



  # GET /tattoos/1
  # GET /tattoos/1.json
  def show
  end

  # GET /tattoos/new
  def new
    @tattoo = Tattoo.new
  end

  # GET /tattoos/1/edit
  def edit
  end

  # POST /tattoos
  # POST /tattoos.json
  def create
    @tattoo = Tattoo.new(tattoo_params)

    respond_to do |format|
      if @tattoo.save
        format.html { redirect_to @tattoo, notice: 'Tattoo was successfully created.' }
        format.json { render :show, status: :created, location: @tattoo }
      else
        format.html { render :new }
        format.json { render json: @tattoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tattoos/1
  # PATCH/PUT /tattoos/1.json
  def update
    respond_to do |format|
      if @tattoo.update(tattoo_params)
        format.html { redirect_to @tattoo, notice: 'Tattoo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tattoo }
      else
        format.html { render :edit }
        format.json { render json: @tattoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tattoos/1
  # DELETE /tattoos/1.json
  def destroy
    @tattoo.destroy
    respond_to do |format|
      format.html { redirect_to tattoos_url, notice: 'Tattoo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tattoo
      @tattoo = Tattoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tattoo_params
      params.require(:tattoo).permit(:name, :image_link)
    end
end
