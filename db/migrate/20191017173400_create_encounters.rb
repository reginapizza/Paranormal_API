class CreateEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters do |t|
      t.date :date_of_encounter
      t.time :time_of_encounter
      t.string :location
      t.string :weather
      t.integer :number_of_people
      t.string :wearing
      t.string :entity_type
      t.string :entity_name
      t.string :disposition
      t.text :appearance
      t.text :encounter_description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
