# Create few test users

5.times do |i|
  User.create(username: "User #{i+1}", password: 'user123')
end

# Create two messages from each user
User.all.each do |user|
  2.times do |i|
    user.messages.create(body: "#{user.username} : #{i + 1} message")
  end
end
