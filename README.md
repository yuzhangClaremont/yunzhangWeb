# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
2.1 create a project (-d mysql??)
    1.. rails new yunWeb -b mysql

2.2 configure a project 
    ->gemfile (gems u need config) <bundle install> with new gem

    config-> application.rb  (general app configration, usually no change )

    2.. config database 
        -> database.yml
        mysql -u root -p (user, passward option) 
        20021991
        CREATE DATABASE yun_development;
        CREATE DATABASE yun_test;
        (root user? new user)(*all tables in database)
        GRANT ALL PRIVILEGES ON yun_development.* TO 'yun_user'@'localhost' IDENTIFIED BY 'password';
        GRANT ALL PRIVILEGES ON yun_test.* TO 'yun_user'@'localhost' IDENTIFIED BY 'password';

        rails db:schema:dump

migrate: 
    bin/rails db:migrate RAILS_ENV=development

2.3 puma web server
    3.. rails s
        ctrl+c
        localhost:3000
        127.0.0.1:3000

2.4 generate controller and view
    4..
        rails g controller demo index (demo controller index view)
    app -> controller -> demo_controller.rb 
        5..
        layout false (line 3, turn layout off) 

        app -> views -> demo -> index.html.erb
            6.. <h1>Hello</h1>
    
    config -> routes.rb (to wire things out)
    7.. rails s
        localhost:3000/demo/index

2.5 server request handling

    public directory, not use rails application, static page

    8..
    ->public -> create google.html
    localhost:3000/google.html
    localhost:3000/demo/google.html, never went to rail app

2.6 Route

    Simple route: 
    9..
        get 'demo/index'
    same as 
        match "demp/index", :to => "demo#index,
            :via => :get 
        (matching the first string to demo#index) controller#action
        get request or post request

    default route:
        
        get ':controller(/:action(/:id))' (these are optional)

    Root route:
    9..
        root 'demo#index' #tell where is home
        get 'demo/index' # to match it

3.1 Render a template

    rails g controller demo template

    10.. demo_controller.rb
            def template
                render(:template => 'demo/template')
                 or
                render('demo/template')
                 or
                render('template')
            end

        routes.rb
        get 'demo/template'

3.2 Redirect
    11 .. 
        def other_hello
            redirect_to(:controller => 'demo', :action => 'index') # go to first function
        end

3.3 View Template
    erb to process html
    <% 1+1 %> (calculate value but don't output)
    <%= 1+1 %> (calculate and outout)

    <% target = 'world' %><br/> (<br/> html new line)
    <%= "Hello #{target}" %> (have to be double quote, to interprete string)

    12..
    <br/>
    <%=
    3.times do |n|
        puts n (puts output to console but not in template, =render return value 3)
    end
    %>

    <br/>
    <%3.times do |n| %>
    <%= n %><br/>
    <%end%>
3.4 instance variables (give templates access data gethered by controller)
    variableRuby
    @instance_variableRuby (an instance of controller, a ruby class)
    when erb render template, it matches controllers instance variables

    ->demo_controller.rb

    def index
    @array = [1,2,3,4,5]
    render('index')
    end

    ->index.html.erb
    <% @array.each do |n| %>
    <%= n %><br/>
    <%end%>
3.5, Links
    <a href="/demo/index">index page</a> ("url">link name index page)

    rails helper
    <%= link_to(text,target)%> (target can be url string or {:controller => 'demo', :action => 'index'})

    <br/>
    <a href="/demo/template"> template page</a><br/>
    <%= link_to('test page',
        {:controller =>'controller1', :action=>'test'})%>

www.linkedin.com/in/yun-zhang-claremont
start Bootstrap

3.6. URL parameters
    params[:id]
    params['id']

Website
apps-> asset -stylesheet
copy css files in css into stylesheet

copy js to apps -> asset -> javascripts

img to image

copy index html to index, change 