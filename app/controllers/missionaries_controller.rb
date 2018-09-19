class MissionariesController < ApplicationController
  before_action :set_missionary, only: [:show, :edit, :update, :destroy]

  def home
    @missionary = Missionary.all.sample
  end

  # GET /missionaries
  # GET /missionaries.json
  def index
    @missionaries = Missionary.all
  end

  # GET /missionaries/1
  # GET /missionaries/1.json
  def show
  end

  # GET /missionaries/new
  def new
    @missionary = Missionary.new
  end

  # GET /missionaries/1/edit
  def edit
  end

  # POST /missionaries
  # POST /missionaries.json
  def create
    @missionary = Missionary.new(missionary_params)

    respond_to do |format|
      if @missionary.save
        format.html { redirect_to @missionary, notice: 'Missionary was successfully created.' }
        format.json { render :show, status: :created, location: @missionary }
      else
        format.html { render :new }
        format.json { render json: @missionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /missionaries/1
  # PATCH/PUT /missionaries/1.json
  def update
    respond_to do |format|
      if @missionary.update(missionary_params)
        format.html { redirect_to @missionary, notice: 'Missionary was successfully updated.' }
        format.json { render :show, status: :ok, location: @missionary }
      else
        format.html { render :edit }
        format.json { render json: @missionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missionaries/1
  # DELETE /missionaries/1.json
  def destroy
    @missionary.destroy
    respond_to do |format|
      format.html { redirect_to missionaries_url, notice: 'Missionary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missionary
      @missionary = Missionary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missionary_params
      params.require(:missionary).permit(:name, :campus, :image_url)
    end
end
