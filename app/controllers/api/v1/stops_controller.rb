class Api::V1::StopsController < AuthenticatedApiController

  before_action :load_tour

  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def create
    @stop = @tour.stops.build(stop_params)
    created = @stop.save ? [StopPresenter.new(@stop), :ok] : [ErrorsPresenter.new(@stop), :bad_request]
    render_ok_or_error(created)
  end

  protected

  def load_tour
    @tour = current_user.tours.find(params[:tour_id])
  end

  def stop_params
    params.require(:stop).permit(
      :title,
      :media,
      :stop_number,
      :item_id,
      :media,
      :media_type,
    )
  end

end