class AdminMailer < ApplicationMailer
    def new_summary_email
        @users = params[:users]
        mail(to: "admin@mailhog", subject: "Summary of newly added users and items")
    end
end
