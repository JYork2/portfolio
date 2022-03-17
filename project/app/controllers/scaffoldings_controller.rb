class ScaffoldingsController < ApplicationController
  before_action :set_scaffolding, only: %i[ show edit update destroy ]

  # GET /scaffoldings or /scaffoldings.json
  def index
    @scaffoldings = Scaffolding.all
  end

  # GET /scaffoldings/1 or /scaffoldings/1.json
  def show
  end

  # GET /scaffoldings/new
  def new
    @scaffolding = Scaffolding.new
  end

  # GET /scaffoldings/1/edit
  def edit
  end

  # POST /scaffoldings or /scaffoldings.json
  def create
    @scaffolding = Scaffolding.new(scaffolding_params)

    respond_to do |format|
      if @scaffolding.save
        format.html { redirect_to scaffolding_url(@scaffolding), notice: "Scaffolding was successfully created." }
        format.json { render :show, status: :created, location: @scaffolding }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scaffolding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffoldings/1 or /scaffoldings/1.json
  def update
    respond_to do |format|
      if @scaffolding.update(scaffolding_params)
        format.html { redirect_to scaffolding_url(@scaffolding), notice: "Scaffolding was successfully updated." }
        format.json { render :show, status: :ok, location: @scaffolding }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scaffolding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffoldings/1 or /scaffoldings/1.json
  def destroy
    @scaffolding.destroy

    respond_to do |format|
      format.html { redirect_to scaffoldings_url, notice: "Scaffolding was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffolding
      @scaffolding = Scaffolding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scaffolding_params
      params.require(:scaffolding).permit(:title, :description)
    end
end
