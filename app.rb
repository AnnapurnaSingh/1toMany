require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :database => "users",
)


# *** Models ***
   # require the models?
   require './models/user'
   require './models/chirp'


#
# *** VIEW-ROUTES ***
get '/' do
  erb :index
end

# get \api\users
# All users
get '/api/users' do
  content_type :json
  users = User.all
  users.to_json
end

# get \api\users\:id
# A specific user
get '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i)
  User.to_json
end

# post \api\users
# Create a new user
post '/api/users' do
  content_type :json
  user = User.create(params[:user])
  todo.to_json
end

# put \api\users\:id
# Update an existing user
put '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i).update(params[:user])
  user.to_json
end

# patch \api\users\:id
# Update an existing user
patch '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i).update(params[:user])
  user.to_json
end

# delete \api\users\:id
# Delete an existing user
delete '/api/users/:id' do
  content_type :json
  User.delete(params[:id].to_i)
  {message: 'Success'}.to_json
end

**************

# get \api\users
# All users
get '/api/users' do
  content_type :json
  users = User.all
  users.to_json
end

# get \api\users\:id
# A specific user
get '/api/users/:user_id/chirps' do
  content_type :json
  user = User.find(params[:id].to_i)
  User.to_json
end

# post \api\users
# Create a new user
post '/api/users' do
  content_type :json
  user = User.create(params[:user])
  todo.to_json
end

# put \api\users\:id
# Update an existing user
put '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i).update(params[:user])
  user.to_json
end

# patch \api\users\:id
# Update an existing user
patch '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i).update(params[:user])
  user.to_json
end

# delete \api\users\:id
# Delete an existing user
delete '/api/users/:id' do
  content_type :json
  User.delete(params[:id].to_i)
  {message: 'Success'}.to_json
end
