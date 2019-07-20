class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:destroy]

  # GET /tournaments
  # GET /tournaments.json
  def index
    @tournaments = Tournament.all
  end

  def search
  end

  # GET /tournaments/1
  # GET /tournaments/1.json
  def show
    @tournament = Tournament.find(params[:id])
    @open_room = Room.find_by(tournament_id: @tournament.id, is_opened: "true")
    if  @tournament.members.where(user_id: current_user.id).exists?
      @d_room = Room.includes(:members).joins(:members).find_by(tournament_id: @tournament.id, members: {user_id: current_user.id } )
    else
      @d_room = Room.new
    end
  end

  # GET /tournaments/new
  def new
    @tournament = Tournament.new
  end

  # GET /tournaments/1/edit
  def edit
    @tournament = Tournament.find(params[:id])
  end

  # POST /tournaments
  # POST /tournaments.json
  def create
    @tournament = Tournament.new(tournament_params)
    @tournament.user_id = current_user.id

    if params[:preview] != nil
      @tournament.is_completed = false
    end

    respond_to do |format|
      if @tournament.save
        @room = Room.new
        @room.tournament_id = @tournament.id
        @room.is_opened = "true"
        @room.save
        format.html { redirect_to @tournament, notice: 'Tournament was successfully created.' }
        format.json { render :show, status: :created, location: @tournament }
      else
        format.html { render :new }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournaments/1
  # PATCH/PUT /tournaments/1.json
  def update

    @tournament = Tournament.find(params[:id])

    if params[:preview] != nil
      @tournament.is_completed = false
    else
      @tournament.is_completed = true
    end

    respond_to do |format|
      if @tournament.update(tournament_params)
        format.html { redirect_to @tournament, notice: 'Tournament was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament }
      else
        format.html { render :edit }
        format.json { render json: @tournament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournaments/1
  # DELETE /tournaments/1.json
  def destroy
    @tournament.destroy
    respond_to do |format|
      format.html { redirect_to tournaments_url, notice: 'Tournament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_params
      params.require(:tournament).permit(:name, :image, :title_id, :date, :maximum, :address, :detail, :user_id, :is_deleted, :is_completed)
    end
end