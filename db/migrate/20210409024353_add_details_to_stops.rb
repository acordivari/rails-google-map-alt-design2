class AddDetailsToStops < ActiveRecord::Migration[6.1]
  def change
    remove_column :stops, :arrival_date
    add_column :stops, :name, :string
    add_column :stops, :pronouns, :string
    add_column :stops, :phone_number, :string
    add_column :stops, :delivery_instructions, :string
  end
end
