require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(player_name)
  new_game = game_hash.collect do |location, team_data|# presents game_hash -> starts @ :home (i.e. team_data)
    if team_data[:players][player_name]#if team_data value is :players -> chain p_n
       return team_data[:players][player_name][:points]#then rt (thus halt) just-> t-d(is a hash)>[appro_arg][(s)] -> returns value!
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, team_data|# same as above ^^
    if team_data[:players][player_name]# " " ^^
       return team_data[:players][player_name][:shoe]# " " ^^
    end
  end
end

def team_colors(team)
  game_hash.each do |location, team_data|
    if team == team_data[:team_name]# if value arg presented(team) is eq to value of what's desired
      return team_data[:colors] #then only return specified values
    end
  end
end

def team_names
  game_hash.collect do |location, team_data|
     team_data[:team_name]#i.e. give me team_name(s) from either home, or away hash. no return or else stops short
  end
end

def player_numbers(team)
  team_numbers = []
  game_hash.each do |location, team_data|
    if team == team_data[:team_name]#if presented arg value is eq to t_d[:t_n] val
      team_data[:players].collect do |name, stats|#then dig into t_d[:players]
        team_numbers << stats[:number]#and place those values in new empty array
      end
    end
  end
  team_numbers #then show new array w/ desired values w/in!
end

def player_stats(player_name)
  game_hash.each do |location, team_data|
    if team_data[:players][player_name] #if value arg presented(team) is eq to value of what's desired
       return team_data[:players][player_name] #then only return specified values
    end
  end
end

def big_shoe_rebounds
  biggest_shoe_size = 0
  rebounds = 0

  game_hash.collect do |location, team_data| 
    team_data[:players].each do |name, stats|
        biggest_shoe_size = stats[:shoe]
        rebounds = stats[:rebounds]
    end
  end
  rebounds
end

def find_by_number(num)
  game_hash.each do |location, team_data|
    team_data[:players].each do |name, stats|
      if num == stats[:number]
        p name
      end
    end
  end
end

find_by_number(33)
