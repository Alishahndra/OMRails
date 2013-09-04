class SpecificsController < ApplicationController
  before_filter :authenticate_user!

  # GET /specifics
  # GET /specifics.json
  def index
    @specifics = current_user.specifics.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @specifics }
    end
  end

  # GET /specifics/1
  # GET /specifics/1.json
  def show
    @specific = Specific.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @specific }
    end
  end

  # GET /specifics/new
  # GET /specifics/new.json
  def new
    @specific = current_user.specifics.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @specific }
    end
  end

  # GET /specifics/1/edit
  def edit
    @specific = currentuser.specifics.find(params[:id])
  end

  # POST /specifics
  # POST /specifics.json
  def create
    @specific = current_user.specifics.new(params[:specific])

    respond_to do |format|
      if @specific.save
        format.html { redirect_to @specific, notice: 'Specific was successfully created.' }
        format.json { render json: @specific, status: :created, location: @specific }
      else
        format.html { render action: "new" }
        format.json { render json: @specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /specifics/1
  # PUT /specifics/1.json
  def update
    @specific = current_user.specifics.find(params[:id])

    respond_to do |format|
      if @specific.update_attributes(params[:specific])
        format.html { redirect_to @specific, notice: 'Specific was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specifics/1
  # DELETE /specifics/1.json
  def destroy
    @specific = current_user.specifics.find(params[:id])
    @specific.destroy

    respond_to do |format|
      format.html { redirect_to specifics_url }
      format.json { head :no_content }
    end
  end
end
