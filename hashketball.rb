require "pry"

def game_hash
  game_hash ={
    :home => {
     :team_name => "Brooklyn Nets",
     :colors => ["Black", "White"],
     :players => {
       "Alan Anderson" => {
         :number => 0,
         :shoe => 16,
         :points => 22,
         :rebounds => 12,
         :assists => 12,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 1
       },
       "Reggie Evans" => {
         :number => 30,
         :shoe => 14,
         :points => 12,
         :rebounds => 12,
         :assists => 12,
         :steals => 12,
         :blocks => 12,
         :slam_dunks => 7
       },
       "Brook Lopez" => {
         :number => 11,
         :shoe => 17,
         :points => 17,
         :rebounds => 19,
         :assists => 10,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 15
       },
       "Mason Plumlee" => {
         :number => 1,
         :shoe => 19,
         :points => 26,
         :rebounds => 11,
         :assists => 6,
         :steals => 3,
         :blocks => 8,
         :slam_dunks => 5
       },
       "Jason Terry" => {
         :number => 31,
         :shoe => 15,
         :points => 19,
         :rebounds => 2,
         :assists => 2,
         :steals => 4,
         :blocks => 11,
         :slam_dunks => 1
       },
     }
    },
    :away => {
     :team_name => "Charlotte Hornets",
     :colors => ["Turquoise", "Purple"],
     :players => {
       "Jeff Adrien" => {
         :number => 4,
         :shoe => 18,
         :points => 10,
         :rebounds => 1,
         :assists => 1,
         :steals => 2,
         :blocks => 7,
         :slam_dunks => 2
       },
       "Bismack Biyombo" => {
         :number => 0,
         :shoe => 16,
         :points => 12,
         :rebounds => 4,
         :assists => 7,
         :steals => 22,
         :blocks => 15,
         :slam_dunks => 10
       },
       "DeSagna Diop" => {
         :number => 2,
         :shoe => 14,
         :points => 24,
         :rebounds => 12,
         :assists => 12,
         :steals => 4,
         :blocks => 5,
         :slam_dunks => 5
       },
       "Ben Gordon" => {
         :number => 8,
         :shoe => 15,
         :points => 33,
         :rebounds => 3,
         :assists => 2,
         :steals => 1,
         :blocks => 1,
         :slam_dunks => 0
       },
       "Kemba Walker" => {
         :number => 33,
         :shoe => 15  ,
         :points => 6,
         :rebounds => 12,
         :assists => 12,
         :steals => 7,
         :blocks => 5,
         :slam_dunks => 12
       },
     }
    },
  }
  return game_hash
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end


def num_points_scored(player_name)
  game_hash.each do |home_away , team_info|
    team_info[:players].each do |name , stats|
      if name == player_name
        return stats[:points]
      end
    end
  end
end

def shoe_size(player_name) 
 game_hash.each do |home_away , team_info|
    team_info[:players].each do |name , stats|
      if name == player_name
        return stats[:shoe]
      end
    end
  end
end

def team_colors(team_n)
  game_hash.each do |home_away , team_info|
    if team_info[:team_name] == team_n
    #  binding.pry
      return team_info[:colors]
    end
  end
end

def team_names
  team_array = []
  game_hash.each do |home_away , team_info|
    while team_array.length < 2  do
      team_array.push(team_info[:team_name])
      #binding.pry
    end
 end
 return team_array
end

def player_numbers(team_n)
  jerseys = []
  game_hash.each do |home_away , team_info|
    if team_info[:team_name] == team_n
      team_info[:players].each do | name , stats|
        jerseys.push(stats[:number])
      end
    end
  end
  return jerseys
end

def player_stats(player_name)
  game_hash.each do |home_away , team_info|
    team_info[:players].each do |name , stats|
      if name == player_name
        return stats
      end
    end
  end
end

def big_shoe_rebounds
  shoe_size = 
  game_hash.each do |home_away , team_info|
    team_info[:players].each do |name , stats|
      stats[:shoe]
      binding.pry
      if stats[:shoe]  == stats[:shoe]
        binding.pry
        return stats[:rebound]
      end
    end
  end
end