class NightclubsController < ApplicationController
  # GET /nightclubs
  # GET /nightclubs.json
  def index
    @nightclubs = Nightclub.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nightclubs }
    end
  end

  # GET /nightclubs/1
  # GET /nightclubs/1.json
  def show
    @nightclub = Nightclub.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nightclub }
    end
  end

  # GET /nightclubs/new
  # GET /nightclubs/new.json
  def new
    @nightclub = Nightclub.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nightclub }
    end
  end

  # GET /nightclubs/1/edit
  def edit
    @nightclub = Nightclub.find(params[:id])
  end

  # POST /nightclubs
  # POST /nightclubs.json
  def create
    @nightclub = Nightclub.new(params[:nightclub])

    respond_to do |format|
      if @nightclub.save
        format.html { redirect_to @nightclub, notice: 'Nightclub was successfully created.' }
        format.json { render json: @nightclub, status: :created, location: @nightclub }
      else
        format.html { render action: "new" }
        format.json { render json: @nightclub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nightclubs/1
  # PUT /nightclubs/1.json
  def update
    @nightclub = Nightclub.find(params[:id])

    respond_to do |format|
      if @nightclub.update_attributes(params[:nightclub])
        format.html { redirect_to @nightclub, notice: 'Nightclub was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nightclub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nightclubs/1
  # DELETE /nightclubs/1.json
  def destroy
    @nightclub = Nightclub.find(params[:id])
    @nightclub.destroy

    respond_to do |format|
      format.html { redirect_to nightclubs_url }
      format.json { head :no_content }
    end
  end
end
