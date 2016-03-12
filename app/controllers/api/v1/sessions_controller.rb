class Api::V1::SessionsController < ApplicationController

  def create
    user = User.where(email: user_params[:email]).first
    signed_in = user && user.valid_password?(user_params[:password])

    respond_to do |format|
      format.json do
        status_line = signed_in ? ['Your credentials are valid', 200] : ['Your credentials are not valid', 403]
        render json: StatusPresenter.new(*status_line), status: status_line.last
      end
    end

  end

  protected

  def user_params
    params.require(:user).permit(:email, :password)
  end

end