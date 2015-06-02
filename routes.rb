# Routes

get '/' do
	include_files_for(request.path_info)
	erb :index
end

get '/euler' do
	erb :euler
end

get '/judo' do
	erb :judo
end

get '/monk' do
	erb :monk
end

get '/tests' do
	include_files_for(request.path_info)
	erb :tests
end