class TicketRequest < ApplicationRecord
  validates :destination, :flight_number, :applicant_name, :departure_date,
    presence: { message: 'Должно быть заполнено' }
end
