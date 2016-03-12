class StatusPresenter < BasePresenter

  def initialize( message, status = 200 )
    @message = message
    @status = status
  end

  def build(j)
    j.status do
      j.message @message
      j.status @status
    end
  end

end