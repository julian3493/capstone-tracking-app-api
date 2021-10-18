class SessionsController < ApplicationController
  include CurrentUserConcern

  def create
    user = User.find_by(email: params['user']['email']).try(:authenticate, params['user']['password'])

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        loggued_in: true,
        user: user
      }
    else
      render json: { status: 401 }
    end
  end

  def loggued_in
    if @current_user
      render json: {
        loggued_in: true,
        user: @current_user
      }
    else
      render json: {
        loggued_in: false
      }
    end
  end

  def logout
    reset_session
    render json: {
      status: 200,
      logged_out:  true
    }
end