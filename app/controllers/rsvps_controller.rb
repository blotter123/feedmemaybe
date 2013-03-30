class RsvpsController < ApplicationController
  # GET /rsvps
  # GET /rsvps.json
  before_filter :authenticate_user!
  def index
    redirect_to root_path

  end

  # GET /rsvps/1
  # GET /rsvps/1.json
  def show
    redirect_to root_path

  end

  # GET /rsvps/new
  # GET /rsvps/new.json
  def new
    redirect_to root_path

  end

  # GET /rsvps/1/edit
  def edit
    @rsvp = Rsvp.find(params[:id])
  end

  # POST /rsvps
  # POST /rsvps.json
  def create
    @rsvp = Rsvp.new(params[:rsvp])

    if(not @rsvp.user_id == current_user.id)
      redirect_to "/events/"+ @rsvp.event_id.to_s , notice: "Don't try signing in for the wrong user."
    end

    respond_to do |format|
      if @rsvp.save
        format.html { redirect_to @rsvp, notice: 'Rsvp was successfully created.' }
        format.json { render json: @rsvp, status: :created, location: @rsvp }
      else
        format.html { render action: "new" }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rsvps/1
  # PUT /rsvps/1.json
  def update

    redirect_to root_path

  end

  # DELETE /rsvps/1
  # DELETE /rsvps/1.json
  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy

    respond_to do |format|
      format.html { redirect_to "/events/" + @rsvp.event_id.to_s }
      format.json { head :no_content }
    end
  end
end
