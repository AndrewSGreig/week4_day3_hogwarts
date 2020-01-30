require( 'sinatra')
require( 'sinatra/contrib/all')
require('pry-byebug')
require_relative("./models/student")
require_relative("./models/house")
also_reload("./models/*")

get '/students' do
  @students= Student.all()
  erb(:index)
end

get '/students/new' do
  erb(:new)
end

post '/students' do
  @student = Student.new (params)
  @student.save()
  erb(:create)
end

get '/houses' do
  @houses = House.all()
  erb(:house)
end

get '/houses/new_house' do
  erb(:new_house)
end

post '/houses/new_houses' do
  @house = House.new (params)
  @house.save
  erb(:new_house)
end

get '/houses/:id' do
#first grab the house id from url
p params
house_id = params[:id]
#Get house - by calling find on House
# and by passing in the ID we got from the params
@house = House.find_by_id(house_id)

#Render the show page for that order
erb(:show)
end
