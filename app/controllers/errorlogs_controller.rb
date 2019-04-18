class ErrorlogsController < ApplicationController
  before_action :set_errorlog, only: [:show, :edit, :update, :destroy]

  # GET /errorlogs
  # GET /errorlogs.json
  def index
    @errorlogs = Errorlog.all
  end

  # GET /errorlogs/1
  # GET /errorlogs/1.json
  def show
  end

  # GET /errorlogs/new
  def new
    @errorlog = Errorlog.new
  end

  # GET /errorlogs/1/edit
  def edit
  end

  # POST /errorlogs
  # POST /errorlogs.json
  def create
    @errorlog = Errorlog.new(errorlog_params)

    respond_to do |format|
      if @errorlog.save
        format.html { redirect_to @errorlog, notice: 'Errorlog was successfully created.' }
        format.json { render :show, status: :created, location: @errorlog }
      else
        format.html { render :new }
        format.json { render json: @errorlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /errorlogs/1
  # PATCH/PUT /errorlogs/1.json
  def update
    respond_to do |format|
      if @errorlog.update(errorlog_params)
        format.html { redirect_to @errorlog, notice: 'Errorlog was successfully updated.' }
        format.json { render :show, status: :ok, location: @errorlog }
      else
        format.html { render :edit }
        format.json { render json: @errorlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /errorlogs/1
  # DELETE /errorlogs/1.json
  def destroy
    @errorlog.destroy
    respond_to do |format|
      format.html { redirect_to errorlogs_url, notice: 'Errorlog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_errorlog
      @errorlog = Errorlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def errorlog_params
      params.require(:errorlog).permit(:identifier, :rownumber, :description)
    end
end
