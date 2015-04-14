class FeijosController < ApplicationController
  before_action :set_feijo, only: [:show, :edit, :update, :destroy]

  # GET /feijos
  # GET /feijos.json
  def index
    @feijos = Feijo.all
  end

  # GET /feijos/1
  # GET /feijos/1.json
  def show
  end

  # GET /feijos/new
  def new
    @feijo = Feijo.new
  end

  # GET /feijos/1/edit
  def edit
  end

  # POST /feijos
  # POST /feijos.json
  def create
    @feijo = Feijo.new(feijo_params)

    respond_to do |format|
      if @feijo.save
        format.html { redirect_to @feijo, notice: 'Feijo was successfully created.' }
        format.json { render :show, status: :created, location: @feijo }
      else
        format.html { render :new }
        format.json { render json: @feijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feijos/1
  # PATCH/PUT /feijos/1.json
  def update
    respond_to do |format|
      if @feijo.update(feijo_params)
        format.html { redirect_to @feijo, notice: 'Feijo was successfully updated.' }
        format.json { render :show, status: :ok, location: @feijo }
      else
        format.html { render :edit }
        format.json { render json: @feijo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feijos/1
  # DELETE /feijos/1.json
  def destroy
    @feijo.destroy
    respond_to do |format|
      format.html { redirect_to feijos_url, notice: 'Feijo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feijo
      @feijo = Feijo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feijo_params
      params.require(:feijo).permit(:tipo, :preco)
    end
end
