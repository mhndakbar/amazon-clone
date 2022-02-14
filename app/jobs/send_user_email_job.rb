class SendUserEmailJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    UserMailer.with(user: user).new_user_email.deliver_later
    puts "Email sent to #{user.name}"
  end
end
