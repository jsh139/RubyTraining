require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first, last, user, email, password)
    @first_name = first
    @last_name = last
    @username = user
    @email = email
    @password = create_hash_digest(password)
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{email}"
  end
end

josh = Student.new('Josh', 'Hoffman', 'jhoffman', 'jsh139@gmail.com', 'P@ssword1')

# hashed_password = josh.create_hash_digest(josh.password)
puts josh.password
puts josh.verify_hash_digest(josh.password) == 'P@ssword1'
