class AuthenticatedApiController < ApiController

  before_filter :authenticate_user!

end