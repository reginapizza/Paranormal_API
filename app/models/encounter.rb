# frozen_string_literal: true

class Encounter < ApplicationRecord
  belongs_to :user
  validates :user,
            :date_of_encounter,
            :entity_type,
            :appearance,
            :encounter_description,
            presence: true
end
