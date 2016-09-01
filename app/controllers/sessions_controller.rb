class SessionsController < Clearance::SessionsController
  def create
    set_remember_me
    super
  end

  private

  def set_remember_me
    if params[:remember_me]
      cookies.permanent[:remember_me] = true
    else
      cookies.delete(:remember_me)
    end
  end
end