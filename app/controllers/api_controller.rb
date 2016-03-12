class ApiController < ApplicationController

  skip_before_action :verify_authenticity_token

  protected

  def render_ok_or_error(created)
    respond_to do |format|
      format.json do
        render json: created.first, status: created.last
      end
    end
  end

end