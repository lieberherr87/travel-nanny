class AddColumnToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :country, :string
  end
end
