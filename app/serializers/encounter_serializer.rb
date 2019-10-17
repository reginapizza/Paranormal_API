# frozen_string_literal: true

class EncounterSerializer < ActiveModel::Serializer
  attributes :id, :date_of_encounter, :time_of_encounter, :location, :weather, :number_of_people, :wearing, :entity_type, :entity_name, :disposition, :appearance, :encounter_description, :editable
  # has_one :user
  def editable
    scope == object.user
  end
end
