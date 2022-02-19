class SendSummaryMailJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    items = Item.where("created_at >= :start_date", {start_date: Date.today})
    users = User.where("created_at >= :start_date", {start_date: Date.today})
    AdminMailer.with(users: @users, items: @items).new_summary_email.deliver_now
  end
end
