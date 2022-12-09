class CreateTicketRequest < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_requests do |t|
      t.string :destination
      t.string :flight_number
      t.datetime :departure_date
      t.string :applicant_name

      t.timestamps
    end
  end
end
