class ProfileCardsController < ApplicationController
  before_action :set_profile_card, only: %i[ show edit update destroy ]

  # GET /profile_cards or /profile_cards.json
  def index
    @profile_cards = ProfileCard.all
  end

  # GET /profile_cards/1 or /profile_cards/1.json
  def show
  end

  # GET /profile_cards/new
  def new
    @profile_card = ProfileCard.new
  end

  # GET /profile_cards/1/edit
  def edit
  end

  # POST /profile_cards or /profile_cards.json
  def create
    @profile_card = ProfileCard.new(profile_card_params)

    respond_to do |format|
      if @profile_card.save
        format.html { redirect_to profile_card_url(@profile_card), notice: "Profile card was successfully created." }
        format.json { render :show, status: :created, location: @profile_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_cards/1 or /profile_cards/1.json
  def update
    respond_to do |format|
      if @profile_card.update(profile_card_params)
        format.html { redirect_to profile_card_url(@profile_card), notice: "Profile card was successfully updated." }
        format.json { render :show, status: :ok, location: @profile_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_cards/1 or /profile_cards/1.json
  def destroy
    @profile_card.destroy

    respond_to do |format|
      format.html { redirect_to profile_cards_url, notice: "Profile card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_card
      @profile_card = ProfileCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_card_params
      params.require(:profile_card).permit(:background, :picture, :first_name, :last_name, :birth_year, :hobbies)
    end
end
