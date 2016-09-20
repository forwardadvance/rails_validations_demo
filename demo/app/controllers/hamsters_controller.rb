class HamstersController < ApplicationController
  before_action :set_hamster, only: [:show, :edit, :update, :destroy]

  # GET /hamsters
  # GET /hamsters.json
  def index
    @hamsters = Hamster.all
  end

  # GET /hamsters/1
  # GET /hamsters/1.json
  def show
  end

  # GET /hamsters/new
  def new
    @hamster = Hamster.new
  end

  # GET /hamsters/1/edit
  def edit
  end

  # POST /hamsters
  # POST /hamsters.json
  def create
    @hamster = Hamster.new(hamster_params)

    respond_to do |format|
      if @hamster.save
        format.html { redirect_to @hamster, notice: 'Hamster was successfully created.' }
        format.json { render :show, status: :created, location: @hamster }
      else
        format.html { render :new }
        format.json { render json: @hamster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hamsters/1
  # PATCH/PUT /hamsters/1.json
  def update
    respond_to do |format|
      if @hamster.update(hamster_params)
        format.html { redirect_to @hamster, notice: 'Hamster was successfully updated.' }
        format.json { render :show, status: :ok, location: @hamster }
      else
        format.html { render :edit }
        format.json { render json: @hamster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hamsters/1
  # DELETE /hamsters/1.json
  def destroy
    @hamster.destroy
    respond_to do |format|
      format.html { redirect_to hamsters_url, notice: 'Hamster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hamster
      @hamster = Hamster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hamster_params
      params.require(:hamster).permit(:lat, :lng, :name, :weather, :description)
    end
end
