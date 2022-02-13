# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview
    def new_item_mailer
        item = Item.new(title:"Book", description:"The jungel")
        ItemMailer.with(item: item).new_item_email
    end
end
