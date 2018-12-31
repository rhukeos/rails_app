class LorriesController < ApplicationController
  before_action :set_lorry, only: [:show, :edit, :update, :destroy]

  # GET /lorries
  # GET /lorries.json
  def index
    @lorries = Lorry.all
  end

  # GET /lorries/1
  # GET /lorries/1.json
  def show
  end

  # GET /lorries/new
  def new
    @lorry = Lorry.new
  end

  # GET /lorries/1/edit
  def edit
  end

  # POST /lorries
  # POST /lorries.json
  def create
    @lorry = Lorry.new(lorry_params)

    respond_to do |format|
      if @lorry.save
        format.html { redirect_to @lorry, notice: 'Lorry was successfully created.' }
        format.json { render :show, status: :created, location: @lorry }
      else
        format.html { render :new }
        format.json { render json: @lorry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lorries/1
  # PATCH/PUT /lorries/1.json
  def update
    respond_to do |format|
      if @lorry.update(lorry_params)
        format.html { redirect_to @lorry, notice: 'Lorry was successfully updated.' }
        format.json { render :show, status: :ok, location: @lorry }
      else
        format.html { render :edit }
        format.json { render json: @lorry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lorries/1
  # DELETE /lorries/1.json
  def destroy
    @lorry.destroy
    respond_to do |format|
      format.html { redirect_to lorries_url, notice: 'Lorry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lorry
      @lorry = Lorry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lorry_params
      params.fetch(:lorry, {})
    end
end
