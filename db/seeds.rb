user = User.find_or_initialize_by(email: 'test@example.com')
user.password = 'password'
user.save!

puts "#{user.email} was created!"
