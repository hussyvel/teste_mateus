class TesteMateusController < ApplicationController
  before_action :set_teste_mateu, only: [:show, :edit, :update, :destroy]

  # GET /teste_mateus
  # GET /teste_mateus.json
  def index
    @teste_mateus = TesteMateu.all
  end

  # GET /teste_mateus/1
  # GET /teste_mateus/1.json
  def show
  end

  # GET /teste_mateus/new
  def new
    @teste_mateu = TesteMateu.new
  end

  # GET /teste_mateus/1/edit
  def edit
  end

  # POST /teste_mateus
  # POST /teste_mateus.json
  def create
    @teste_mateu = TesteMateu.new(teste_mateu_params)

    respond_to do |format|
      if @teste_mateu.save
        format.html { redirect_to @teste_mateu, notice: 'Teste mateu was successfully created.' }
        format.json { render :show, status: :created, location: @teste_mateu }
      else
        format.html { render :new }
        format.json { render json: @teste_mateu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teste_mateus/1
  # PATCH/PUT /teste_mateus/1.json
  def update
    respond_to do |format|
      if @teste_mateu.update(teste_mateu_params)
        format.html { redirect_to @teste_mateu, notice: 'Teste mateu was successfully updated.' }
        format.json { render :show, status: :ok, location: @teste_mateu }
      else
        format.html { render :edit }
        format.json { render json: @teste_mateu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teste_mateus/1
  # DELETE /teste_mateus/1.json
  def destroy
    @teste_mateu.destroy
    respond_to do |format|
      format.html { redirect_to teste_mateus_url, notice: 'Teste mateu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teste_mateu
      @teste_mateu = TesteMateu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teste_mateu_params
      params.require(:teste_mateu).permit(:nome, :id_seq, :descricao, :email, :data)
    end
end
