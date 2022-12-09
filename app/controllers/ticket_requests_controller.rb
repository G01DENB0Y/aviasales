class TicketRequestsController < ApplicationController
  def new
    @ticket_request ||= TicketRequest.new
  end

  def create
    @ticket_request = TicketRequest.new(ticket_request_params)
    if @ticket_request.save
      redirect_to root_path, notice: 'Заявка успешно создана!'
    else
      render :new
    end
  end

  def index
    @ticket_requests = TicketRequest.all

    if (ticket_search_params[:departure_date].present?)
      @ticket_requests = @ticket_requests.where(departure_date: ticket_search_params[:departure_date])
    end

    if (ticket_search_params[:flight_number].present?)
      @ticket_requests = @ticket_requests.where(flight_number: ticket_search_params[:flight_number])
    end

    if (ticket_search_params[:sort_by].present?)
      @ticket_requests = @ticket_requests.order(ticket_search_params[:sort_by])
    end
  end

  def destroy
    @ticket_request = TicketRequest.find(params[:id])
    @ticket_request.destroy
    redirect_to ticket_requests_path, notice: 'Заявка успешно удалена!'
  end

  private

  def ticket_request_params
    params.require(:ticket_request).permit(:destination, :flight_number, :departure_date, :applicant_name)
  end

  def ticket_search_params
    params.permit(:destination, :flight_number, :departure_date)
  end
end
