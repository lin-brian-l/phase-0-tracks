# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# ********** Release 0 **********

# contact route to show an address
get '/contact' do
  "Subway<br> 493 S Weber Road<br> Bolingbrook, IL 60440"
end

# great_job route to say "good job"
get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
  	"Good job!"
  end
end

# add route parameters
get '/add/:n1/:n2' do
  n1 = params[:n1].to_i
  n2 = params[:n2].to_i
  n3 = n1 + n2
  "#{n1} + #{n2} = #{n3}"
end