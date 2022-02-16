# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
    def new_summary_email
        users = User.all
        items = Item.all
        AdminMailer.with(users: @users).new_summary_email
    end
end
