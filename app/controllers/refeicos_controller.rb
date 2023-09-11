class RefeicosController < ApplicationController
  before_action :set_refeico, only: %i[ show edit update destroy ]

  # GET /refeicos or /refeicos.json
  def index
    @refeicos = Refeico.all
  end

  # GET /refeicos/1 or /refeicos/1.json
  def show
  end

  # GET /refeicos/new
  def new
    @refeico = Refeico.new
  end

  # GET /refeicos/1/edit
  def edit
  end

  # POST /refeicos or /refeicos.json
  def create
    @refeico = Refeico.new(refeico_params)

    respond_to do |format|
      if @refeico.save
        format.html { redirect_to refeico_url(@refeico), notice: "Refeição foi criada com sucesso." }
        format.json { render :show, status: :created, location: @refeico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @refeico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refeicos/1 or /refeicos/1.json
  def update
    respond_to do |format|
      if @refeico.update(refeico_params)
        format.html { redirect_to refeico_url(@refeico), notice: "Refeição foi atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @refeico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @refeico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refeicos/1 or /refeicos/1.json
  def destroy
    @refeico.destroy

    respond_to do |format|
      format.html { redirect_to refeicos_url, notice: "Refeição foi deletada com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refeico
      @refeico = Refeico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def refeico_params
      params.require(:refeico).permit(:refeicao, :data)
    end
end
