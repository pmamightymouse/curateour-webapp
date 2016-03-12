class ErrorsPresenter < BasePresenter

  def initialize(record)
    @record = record
  end

  def build(j)
    j.(@record, :id)
    j.errors(@record.errors)
  end

end