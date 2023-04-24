class User
    attr_accessor :email, :age
    @@all_users = []

    def initialize(email_to_save, age_to_save)
        @email = (email_to_save)
        @age = (age_to_save)
        @@all_users.push(self)
        puts "Welcome ! Thank you for signing up !"
    end

    def self.all
        return @@all_users
    end

    def self.find_by_email(email)
        @@all_users.each do |user|
            if email == user.email 
                return user
            end
        end
        # alternative way: 
        # @@all_users.bsearch{|user| user.email == email}
    end

end

