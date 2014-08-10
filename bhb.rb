require 'rubygems'
require 'sinatra'

TEAMS = [[377, "ASB", "ASB", "Huy Le"],
[355, "Battlestar Hacktacica", "PenPal", "Austin Stapley, Bobby Brennan, Saurya Velagapudi"],
[360, "BUtiful Bois", "Late Night Safety Kit", "Connor McEwen, Nam Chu Hoai, Guy Aridor, Connor Mathews"],
[369, "Cambridge Hackspace", "AgriGate", "Phil Turnbull, Juan Carlos Morales, Rhys Farrer, Bruce Jones"],
[367, "CharmPI", "Pothole Sonar", "Wu-Hsi Li, Kevin Tu"],
[379, "ER Finder", "ER finder", "praveen meka"],
[370, "Fight! Win! Drink! Get Naked!", "Cat Facts", "Shane del Solar, Ruiqi Zhang"],
[380, "HAC", "AAA", "YIFEI HAN"],
[349, "Hackstars", "FundRunner", "Richard Hellwege, Ignacio Fuentes, Lance McCarthy, Jeffrey Harmon"],
[365, "HaveKnow", "HaveKnow", "Tyler McDaniel, Sara Jarjoura, Haris Iqbal, Kevin Holbrook"],
[344, "Haxe", "Honk", "Akos Putz, Peter Perlai, Timea Szabo, Zsolt Nemeth"],
[348, "Homeless Hackers", "Find a shelter", "Vu Pham, Josh Adams, Octavian Neamtu"],
[350, "i can change the name of any team lol", "Empowered Locals", "John Doyle, Rahul Hore"],
[346, "Idea Connect", "Idea connect", "Lulu Li"],
[361, "ImpactTeam", "Impact", "Galia Traub, Jide Fajobi"],
[362, "KIU!", "Keep It Up!", "Brian Poole"],
[359, "Local Samaritans", "Local Samaritans", "Robert Calise, Joe Nigro"],
[372, "MadDotis", "Dotis", "jonathan ward, Wilson Qin, Styliani Pantela, Max Lever"],
[373, "NomeHack", "Nome", "Matt Brenman, Julian Locke"],
[358, "NordicFit", "NordicFit", "Cody Dennett, Adam Mahar"],
[378, "raffle", "raffle", "tawheed abdul-raheem, Ilan Rimon, Yuval Dryer"],
[353, "Rentwhich", "Quality apartment incentives", "Lyn Huckabee"],
[352, "RockstarUnicornNinja", "FundMatch", "Tammy Sanders, Kristian Tran, John Rodley, Darren Tseng"],
[374, "Rodney Dangerfield", "QuidPro", "Darren Deanto, Chen Ye, Tony Amoyal"],
[376, "Spaceship Lollipop", "Floc", "Gowtam Lal, Kyle Holzinger, Karl Shiffler"],
[354, "t0", "Live Multiplayer", "Alessandro Negri"],
[375, "team17", "LineLess", "Patrick Tsai"],
[371, "test", "test", "Justin Woo"],
[366, "Text Me Maybe", "TextBus", "Matt Cloyd, Harlan Weber, Hari Iyer"],
[351, "The Derps", "Jukebox", "Yafim Landa, Staphany Park, Victor Costan"],
[368, "The Founders", "FoundIt", "Brandon Truong, Jin Ruan, Andrei Talaba, Mohammed Ali"],
[341, "Tim's Team", "Flying Unicorns", "Tim Messerschmidt"],
[356, "turtle", "Street Music", "Eugene Reznikov, Matias Insaurralde, Victor Jiao, Anthony Chernyak"]]

class BhbApp < Sinatra::Base

  use Rack::Session::Cookie, secret: '_bhb_secret'

  helpers do
    def protected!
      if not session[:logged_in]
        redirect '/login'
      end
    end
  end

  get '/' do
    erb :index
  end

  get '/login' do
    erb :login
  end

  post '/login' do
  end

end
