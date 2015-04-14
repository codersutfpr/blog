class FeijaosController < ApplicationController
  before_action :set_feijao, only: [:show, :edit, :update, :destroy]

  # GET /feijaos
  # GET /feijaos.json
  def index
    @feijaos = Feijao.all
  end

  # GET /feijaos/1
  # GET /feijaos/1.json
  def show
  end

  # GET /feijaos/new
  def new
    @feijao = Feijao.new
  end

  # GET /feijaos/1/edit
  def edit
  end

  # POST /feijaos
  # POST /feijaos.json
  def create
    @feijao = Feijao.new(feijao_params)

    respond_to do |format|
      if @feijao.save
        format.html { redirect_to @feijao, notice: 'Feijao was successfully created.' }
        format.json { render :show, status: :created, location: @feijao }
      else
        format.html { render :new }
        format.json { render json: @feijao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feijaos/1
  # PATCH/PUT /feijaos/1.json
  def update
    respond_to do |format|
      if @feijao.update(feijao_params)
        format.html { redirect_to @feijao, notice: 'Feijao was successfully updated.' }
        format.json { render :show, status: :ok, location: @feijao }
      else
        format.html { render :edit }
        format.json { render json: @feijao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feijaos/1
  # DELETE /feijaos/1.json
  def destroy
    @feijao.destroy
    respond_to do |format|
      format.html { redirect_to feijaos_url, notice: 'Feijao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feijao
      @feijao = Feijao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feijao_params
      params.require(:feijao).permit(:tipo, :preco)
    end
end
