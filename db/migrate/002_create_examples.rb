# frozen_string_literal: true

class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.text :text, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
