class LoguploadsController < ApplicationController
  before_action :set_logupload, only: [:show, :edit, :update, :destroy]

  # GET /loguploads
  # GET /loguploads.json
  def index
    @loguploads = Logupload.all
  end

  # GET /loguploads/1
  # GET /loguploads/1.json
  def show
  end

  # GET /loguploads/new
  def new
    @logupload = Logupload.new
  end

  # GET /loguploads/1/edit
  def edit
  end

  # POST /loguploads
  # POST /loguploads.json
  def create

    @logupload = Logupload.new(logupload_params)


    respond_to do |format|
      if @logupload.save
        format.html { redirect_to @logupload, notice: 'Logupload was successfully created.' }

        @incoming_file = logupload_params[:filename]
        @identifier = logupload_params[:identifier] + '.csv'
        @new_location = logupload_params[:filelocation]+"/"+@identifier
        print "ORIGINAL : "+@incoming_file.original_filename+ " NEW LOC :"+@new_location+"\n"
        FileUtils.mv @incoming_file.tempfile, @new_location 
        ProcessorWorker.perform_async(@new_location,logupload_params[:identifier] )
        format.json { render :show, status: :created, location: @logupload }
      else
        format.html { render :new }
        format.json { render json: @logupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loguploads/1
  # PATCH/PUT /loguploads/1.json
  def update
    respond_to do |format|
      if @logupload.update(logupload_params)
        format.html { redirect_to @logupload, notice: 'Logupload was successfully updated.' }
        format.json { render :show, status: :ok, location: @logupload }
      else
        format.html { render :edit }
        format.json { render json: @logupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loguploads/1
  # DELETE /loguploads/1.json
  def destroy
    @logupload.destroy
    respond_to do |format|
      format.html { redirect_to loguploads_url, notice: 'Logupload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logupload
      @logupload = Logupload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logupload_params
      params.require(:logupload).permit(:identifier, :filename, :filelocation, :date, :version)
    end
end
