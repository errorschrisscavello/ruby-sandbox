def prettyprint(text)
	'<pre class="prettyprint linenums">' + text + '</pre>'
end

def get_routes
	sinatra_routes = Sinatra::Application.routes["GET"]
	routes = []
	sinatra_routes.each do |r|
		route = r[0].to_s.scan(/\/[A-Za-z\-_0-9]+/)
		routes << route[0] if not (route.empty?)
	end
	routes
end

def file_get_contents(file)
	file = ABSPATH + file
	f = File.new(file)
	contents = f.read
	f.close
	contents
end

def get_code(file)
	file_get_contents('code/' + file)
end

def get_style(file)
	file_get_contents('assets/styles/' + file)
end

def styles
	styles = []
	styles << get_style('normalize.css')
	styles << get_style('style.css')
	styles.join("\n\n")
end

def include_files_for(request_path_info)
	case request_path_info.gsub(/\//, '')
	when 'euler'
	when 'judo'
	when 'monk'
	when 'tests'
		$TESTS_INCLUDES.each do |f|
			require_relative 'code/tests/' + f + '.rb'
		end
	end
end

def h(html)
	CGI.escapeHTML(html)
end