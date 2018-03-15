require "sinatra"

get "/" do #get comes from a page
	erb :first_page
end

post "/name" do #post goes to a page
	name = params[:name]
	redirect "/name_redirect?name=" + name #question mark separates where I am redirecting to and the values I'm passing through
end

get "/name_redirect" do
	f_name = params[:name]
	erb :second_page, locals: {f_name: f_name}
end

post "/age" do
	f_name = params[:f_name]
	age = params[:age]
	redirect "/favorite_food?f_name=" + f_name +"&age=" + age #means moving to next page
end

get "/favorite_food" do
	f_name = params[:f_name]
	age = params[:age]
	erb :third_page, locals: {f_name: f_name, age: age}
	
end

post "/food_drink" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	redirect "/numbers?f_name=" + f_name +"&age=" + age + "&food=" + food + "&drink=" + drink
end

get "/numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	erb :fourth_page, locals: {f_name: f_name, age: age, food: food, drink: drink}
end

post "/numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:number_1]
	num2 = params[:number_2]
	num3 = params[:number_3]
	redirect "/color?f_name=" + f_name +"&age=" + age + "&food=" + food + "&drink=" + drink + "&number_1=" + num1 + "&number_2=" + num2 + "&number_3=" + num3
end

get "/color" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:number_1]
	num2 = params[:number_2]
	num3 = params[:number_3]
	erb :fifth_page, locals: {f_name: f_name, age: age, food: food, drink: drink, number_1: num1, number_2: num2, number_3: num3}
end

post "/color" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:number_1]
	num2 = params[:number_2]
	num3 = params[:number_3]
	color = params[:color]
	erb :sixth_page, locals: {f_name: f_name, age: age, food: food, drink: drink, number_1: num1, number_2: num2, number_3: num3, color: color}
end


