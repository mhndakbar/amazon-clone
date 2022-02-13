class ItemMailer < ApplicationMailer
    def new_item_email
        @item = params[:item]
        @users = User.all
        mail(to:@users.map{|u| [u.email]}, subject: 'New item was added!')
    end
end
