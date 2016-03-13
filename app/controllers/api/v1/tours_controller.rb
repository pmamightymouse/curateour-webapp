class Api::V1::ToursController < AuthenticatedApiController

  skip_before_action :authenticate_user!, only: [ :index ]

  def create
    @tour = current_user.tours.build(tour_params)
    created = @tour.save ? [TourPresenter.new(@tour), :ok] : [ErrorsPresenter.new(@tour), :bad_request]
    render_ok_or_error(created)
  end

  def index
    @tours = Tour.all
    respond_to do |format|
      format.json do
        render json: ToursPresenter.new(@tours)
      end
    end
  end

  protected

  def tour_params
    params.require(:tour).permit(:name)
  end

end