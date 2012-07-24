class SocialWorkersController < ApplicationController
  # GET /social_workers
  # GET /social_workers.json
  def index
    @social_workers = SocialWorker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @social_workers }
    end
  end

  # GET /social_workers/1
  # GET /social_workers/1.json
  def show
    @social_worker = SocialWorker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @social_worker }
    end
  end

  # GET /social_workers/new
  # GET /social_workers/new.json
  def new
    @social_worker = SocialWorker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @social_worker }
    end
  end

  # GET /social_workers/1/edit
  def edit
    @social_worker = SocialWorker.find(params[:id])
  end

  # POST /social_workers
  # POST /social_workers.json
  def create
    @social_worker = SocialWorker.new(params[:social_worker])

    respond_to do |format|
      if @social_worker.save
        format.html { redirect_to @social_worker, notice: 'Social worker was successfully created.' }
        format.json { render json: @social_worker, status: :created, location: @social_worker }
      else
        format.html { render action: "new" }
        format.json { render json: @social_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /social_workers/1
  # PUT /social_workers/1.json
  def update
    @social_worker = SocialWorker.find(params[:id])

    respond_to do |format|
      if @social_worker.update_attributes(params[:social_worker])
        format.html { redirect_to @social_worker, notice: 'Social worker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @social_worker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_workers/1
  # DELETE /social_workers/1.json
  def destroy
    @social_worker = SocialWorker.find(params[:id])
    @social_worker.destroy

    respond_to do |format|
      format.html { redirect_to social_workers_url }
      format.json { head :no_content }
    end
  end
end
