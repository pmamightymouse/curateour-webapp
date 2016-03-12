class BasePresenter

  def present
    jbuilder = Jbuilder.new
    build(jbuilder)
    jbuilder.target!
  end

  def to_json(options = nil)
    present
  end

end
