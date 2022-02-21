class User < ApplicationRecord
    after_create do
        SendUserEmailJob.perform_later(self)
        SendSummaryMailJob.perform_later()
        #puts "after create"
    end
end
