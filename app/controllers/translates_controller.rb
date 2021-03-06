class TranslatesController < ApplicationController
  before_action :set_translate, only: [:show, :edit, :update, :destroy]

  # GET /translates
  # GET /translates.json
  def index
    @translates = Translate.all
  end

  # GET /translates/1
  # GET /translates/1.json
  def show
  end

  # GET /translates/new
  def new
    @translate = Translate.new
  end

  # GET /translates/1/edit
  def edit
  end

  # POST /translates
  # POST /translates.json
  def create
    @translate = Translate.new(translate_params)

    respond_to do |format|
      if @translate.save
        format.html { redirect_to @translate, notice: 'Translate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @translate }
      else
        format.html { render action: 'new' }
        format.json { render json: @translate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translates/1
  # PATCH/PUT /translates/1.json
  def update
    respond_to do |format|
      if @translate.update(translate_params)
        format.html { redirect_to @translate, notice: 'Translate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @translate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translates/1
  # DELETE /translates/1.json
  def destroy
    @translate.destroy
    respond_to do |format|
      format.html { redirect_to translates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translate
      @translate = Translate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translate_params
      params.require(:translate).permit(:brasileira, :inglesa, :data)
    end
end
