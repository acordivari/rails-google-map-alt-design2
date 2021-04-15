class CreateMarkers < ActiveRecord::Migration[6.1]
  def change
    create_table :markers do |t|
      t.string :address
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
