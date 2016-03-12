class StopPresenter < BasePresenter

  def initialize(stop)
    @stop = stop
  end

  def build(j)
    j.(@stop, :title, :media, :item_id, :stop_number, :tour_id, :created_at, :updated_at)
  end

end