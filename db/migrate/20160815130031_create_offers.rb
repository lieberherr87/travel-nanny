class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :location
      t.integer :price_per_day
      t.string :superpower
      t.string :video
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
