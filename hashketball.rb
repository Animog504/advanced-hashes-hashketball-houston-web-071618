require 'pry'

# Write your code here!
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["black","white"],
      :players => {
          "Alan Anderson"=>{
          :player_number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks  => 1,
          :slam_dunks => 1
        
        },"Reggie Evans"=>{
          :player_number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        
        },"Brook Lopez"=>{
          :player_number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        
        },"Mason Plumlee"=>{
          :player_number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        
        },"Jason Terry"=>{
          :player_number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2, 
          :assists => 2, 
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1 
        
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["turquoise","purple"],
      :players => {
          "Jeff Adrien"=>{
          :player_number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks  => 7,
          :slam_dunks => 2
        
        },"Bismak Biyombo"=>{
          :player_number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        
        },"DeSagna Diop"=>{
          :player_number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        
        },"Ben Gordon"=>{
          :player_number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        
        },"Brendan Haywood"=>{
          :player_number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12, 
          :assists => 12, 
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12 
        
        }
      }
    }
}
end

def num_points_scored(player_name)
  #objectives:
  #Iterate through game_hash to geto to players
  
  players_nested_array = game_hash.values.map do |team_hash|
   team_hash[:players]
  end
  
  players = players_nested_array.flatten
  
  #Find "player" [Jeff Adrien]
  counter = 0
  player = players.find do |player_hash|
       #player_hash.keys returns an array of strings
       
       #iterate the strings!!
    while counter < player_hash.keys.length 
      player = player_hash.keys[counter]
      if player == player_name 
      return player_hash[player.to_s][:points] # SHOULD RETURN POINTS
      else
      counter+=1
      end
      
      
    end
   # binding.pry
  end
  
  #output/return player's score
  
  player[:points]
 
end

def shoe_size
  
end

def team_colors

end 

def team_names

end 

def player_numbers

end 

def player_stats
  
end

def big_shoe_rebounds
  
end