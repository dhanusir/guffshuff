# Create few test users

john = User.create(username: 'johndoe', password: 'john123')
foo = User.create(username: 'foobar', password: 'foo123')
brg = User.create(username: 'coolbrg', password: 'brg123')

# Create two messages from each user
john.messages.create(body: "Hello folks!")
foo.messages.create(body: "Hi buddy")
brg.messages.create(body: "Welcome to the team!")
john.messages.create(body: "Thanks! Nice to meet you all.")
brg.messages.create(body: "Same here")
foo.messages.create(body: "Me too")
