class AnagramasController < ApplicationController
  before_action :set_anagrama, only: [:show, :edit, :update, :destroy]

  # GET /anagramas
  # GET /anagramas.json
  def index
    @anagramas = Anagrama.all
  end

  # GET /anagramas/1
  # GET /anagramas/1.json
  def show
  end

  # GET /anagramas/new
  def new
    @anagrama = Anagrama.new
  end
  

  # GET /anagramas/1/edit
  def edit
  end

  # POST /anagramas
  # POST /anagramas.json
  def create
    @anagrama = Anagrama.new(anagrama_params)
    
    if ((@anagrama.word1 == "") || (@anagrama.word2 == ""))
      @anagrama.status = "Ops. Voce deve completar os dois campos."
        else
           w1 = @anagrama.word1.chars.sort
           w2 = @anagrama.word2.chars.sort
            if w1 == w2
              @anagrama.check.status = true
            end
        end
 
    respond_to do |format|
      if @anagrama.save
        format.html { redirect_to @anagrama, notice: 'Anagrama was successfully created.' }
        format.json { render :show, status: :created, location: @anagrama }
      else
        format.html { render :new }
        format.json { render json: @anagrama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anagramas/1
  # PATCH/PUT /anagramas/1.json
  def update
    respond_to do |format|
      if @anagrama.update(anagrama_params)
        format.html { redirect_to @anagrama, notice: 'Anagrama was successfully updated.' }
        format.json { render :show, status: :ok, location: @anagrama }
      else
        format.html { render :edit }
        format.json { render json: @anagrama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anagramas/1
  # DELETE /anagramas/1.json
  def destroy
    @anagrama.destroy
    respond_to do |format|
      format.html { redirect_to anagramas_url, notice: 'Anagrama was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anagrama
      @anagrama = Anagrama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anagrama_params
      params.require(:anagrama).permit(:word1, :word2, :check)
    end
end
