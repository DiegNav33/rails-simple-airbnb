class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :country
      t.text :description
      t.integer :price_per_nights
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
