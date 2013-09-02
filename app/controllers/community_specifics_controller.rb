class CommunitySpecificsController < ApplicationController
  # GET /community_specifics
  # GET /community_specifics.json
  def index
    @community_specifics = CommunitySpecific.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @community_specifics }
    end
  end

  # GET /community_specifics/1
  # GET /community_specifics/1.json
  def show
    @community_specific = CommunitySpecific.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @community_specific }
    end
  end

  # GET /community_specifics/new
  # GET /community_specifics/new.json
  def new
    @community_specific = CommunitySpecific.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @community_specific }
    end
  end

  # GET /community_specifics/1/edit
  def edit
    @community_specific = CommunitySpecific.find(params[:id])
  end

  # POST /community_specifics
  # POST /community_specifics.json
  def create
    @community_specific = CommunitySpecific.new(params[:community_specific])

    respond_to do |format|
      if @community_specific.save
        format.html { redirect_to @community_specific, notice: 'Community specific was successfully created.' }
        format.json { render json: @community_specific, status: :created, location: @community_specific }
      else
        format.html { render action: "new" }
        format.json { render json: @community_specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /community_specifics/1
  # PUT /community_specifics/1.json
  def update
    @community_specific = CommunitySpecific.find(params[:id])

    respond_to do |format|
      if @community_specific.update_attributes(params[:community_specific])
        format.html { redirect_to @community_specific, notice: 'Community specific was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @community_specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_specifics/1
  # DELETE /community_specifics/1.json
  def destroy
    @community_specific = CommunitySpecific.find(params[:id])
    @community_specific.destroy

    respond_to do |format|
      format.html { redirect_to community_specifics_url }
      format.json { head :no_content }
    end
  end
end
