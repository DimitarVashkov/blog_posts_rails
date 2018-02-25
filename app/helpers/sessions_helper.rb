module SessionsHelper
  def log_in(user)
    remember_token = User.create_new_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.digest(remember_token))
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  # Returns the current logged-in user (if any).
  def current_user
    remember_token = User.digest(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  def log_out
    current_user.update_attribute(:remember_token,
                                  User.digest(User.create_new_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
end
