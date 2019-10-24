# frozen_string_literal: true

class EncountersController < ProtectedController
  before_action :set_encounter, only: %i[update destroy]

  # GET /encounters
  def index
    @encounters = Encounter.all

    render json: @encounters
  end

  # GET /encounters
  def index_my
    @encounters = current_user.encounters

    render json: @encounters
  end

  # GET /encounters/1
  def show
    render json: Encounter.find(params[:id])
  end

  # POST /encounters
  def create
    @encounter = current_user.encounters.build(encounter_params)

    if @encounter.save
      render json: @encounter, status: :created, location: @encounter
    else
      render json: @encounter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /encounters/1
  def update
    if @encounter.update(encounter_params)
      render json: @encounter
    else
      render json: @encounter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /encounters/1
  def destroy
    @encounter.destroy

    head :no_content
  end

  def set_encounter
    @encounter = current_user.encounters.find(params[:id])
  end

  def encounter_params
    params.require(:encounter).permit(:date_of_encounter,
                                      :time_of_encounter,
                                      :location, :weather,
                                      :number_of_people,
                                      :wearing,
                                      :entity_type,
                                      :entity_name,
                                      :disposition,
                                      :appearance,
                                      :encounter_description,
                                      :user_id)
  end

  private :set_encounter, :encounter_params
end
