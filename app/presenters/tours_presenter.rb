class ToursPresenter < BasePresenter

  def initalize(tours)
    @tours = tours
  end

  def build(j)
    j.array!(@tours) do |tour|
      TourPresenter.new(tour).build(j)
    end
  end

end