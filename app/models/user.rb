class User < ApplicationRecord
    after_create do
        SendUserEmailJob.perform_later(self)
        puts "after create"
    end
end
