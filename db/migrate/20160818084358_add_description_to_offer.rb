class AddDescriptionToOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :description, :string
  end
end
