class UserPresenter < BasePresenter

  def initialize(user)
    @user = user
  end

  def build(j)
    j.(@user, :email, :id)
  end

end