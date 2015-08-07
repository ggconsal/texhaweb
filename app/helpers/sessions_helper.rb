module SessionsHelper

  # Logs in the given user.
  def log_in(contact)
    session[:user_id] = contact.id
  end

  # Returns the current logged-in user (if any).
  def current_contact
    @current_contact ||= Contact.find_by(id: session[:user_id])
  end
  
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_contact.nil?
  end

  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_contact = nil
  end

end
