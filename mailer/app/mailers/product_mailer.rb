class ProductMailer < ApplicationMailer
    def welcome_mailer(user, product)
        @user = user
        @product = product
        mail(to: user.email, subject: 'New Product Added')
      end
end
