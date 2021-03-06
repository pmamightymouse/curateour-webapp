class TourPresenter < BasePresenter

  def initialize(tour)
    @tour = tour
  end

  def build(j)
    j.(@tour, :id, :name, :created_at, :updated_at)
    j.user do
      UserPresenter.new(@tour.user).build(j)
    end
    j.stops(@tour.stops) do |stop|
      StopPresenter.new(stop).build(j)
    end
  end

end