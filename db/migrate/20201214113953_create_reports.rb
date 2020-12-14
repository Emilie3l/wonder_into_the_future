class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.date :date
      t.boolean :active
      t.string :purpose
      t.string :organizer
      t.string :location
      t.string :url

      t.timestamps
    end
  end
end
