require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
       erb :super_hero 
    end

    post '/teams' do
        @team = Team.new(params[:team])
        @hero1 = Superhero.new(params[:team][:members][0])
        @hero2 = Superhero.new(params[:team][:members][1])
        @hero3 = Superhero.new(params[:team][:members][2])

        erb :team
    end

end
