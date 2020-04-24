user = User.find_or_initialize_by!(email: 'test@example.com')

if user
  user.password = 'password'
end

puts "#{user.email} was created!"


