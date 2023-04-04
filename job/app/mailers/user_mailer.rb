class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to the Website')
  end

  def send_night_email_to_all_users
    @users = User.all
    mail(to: @users.pluck(:email), subject: 'Nightly Update').deliver 
  end

  def happy_birthday(user)
    @user = user
    mail(to: @user.email, subject: "Happy birthday!")
  end
end
