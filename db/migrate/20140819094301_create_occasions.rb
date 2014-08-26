class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.string :name
      t.date :date
      t.text :message
      t.string :occasion_type
      t.references :recipient, index: true

      t.timestamps
    end
  end
end
