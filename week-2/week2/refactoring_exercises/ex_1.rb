# BEFORE CLASS EXTRACTION
# class UserContacter
#   def send_email_to(user)
#     mail = Mail.new(sanitised_email_for(user))
#
#     mail.send_message
#   end
#
#
#   private
#
#   def sanitised_email_for(user)
#     email.strip
#   end
# end

# AFTER CLASS EXTRACTION
class UserContacter
  def send_email_to(user)
    mail = Mail.new
    sanitised_email_for(user)
    mail.send_message
  end


  private

  def sanitised_email_for(user)
    mail.strip
  end
end
