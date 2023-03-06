class User < ApplicationRecord
    before_create :upcase_firstname_lastname
    after_create:after_create_demo
    before_save:before_save_demo
    after_save:after_save_demo
    before_validation:before_validation_demo
    after_validation:after_validation_demo
    validates :firstname, :lastname, presence: true
  
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email, uniqueness: true
  
    validates :username, exclusion: { in: %w(test bacancy),
    message: "%{value} is reserved." }
  
    validates :planenddate, comparison: { greater_than: :planstartdate }
  
    validates :phonenumber, length: { is: 10 }
    validates :zipcode, length: { minimum: 6 }
  
    validates :password, length: { in: 6..20 }
  
    private
  
    def upcase_firstname_lastname
      self.firstname = firstname.upcase
      self.lastname = lastname.upcase
    end
    def after_save_demo
      puts "After Saved"
    end
     def before_validation_demo
      puts "Before validation"
    end
    def after_validation_demo
      puts "After validation"
    end
    def before_save_demo
      puts "Before Saved"
    end

    def after_create_demo
      puts "after created"
    end  
  end