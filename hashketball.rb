require 'pry'

def game_hash
  ball_game = {
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
          :rebounds => 12,
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
        }
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
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
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
        "Brendan Haywood" => {
          :number => 33,
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


def num_points_scored(player)
  points_scored = []
    game_hash.each do |location, team_data|

      team_data.each do |attribute, data|
        if attribute == :players

          data.each do |name, stats|
            if name == player
              points_scored << game_hash[location][attribute][player][:points]
            end
          end
        end
      end
    end
  return points_scored[0]
end




def shoe_size(player)
  shoe_size = []
    game_hash.each do |location, team_data|

      team_data.each do |attribute, data|
        if attribute == :players

          data.each do |name, stats|
            if name == player
              shoe_size << game_hash[location][attribute][player][:shoe]
            end
          end
        end
      end
    end
  return shoe_size[0]
end




def team_colors(team)
  colors_of_team = []
  game_hash.each do |location, team_data|

    team_data.each do |attribute, data|
      if team == game_hash[location][attribute]
        colors_of_team << game_hash[location][:colors]
      end
    end
  end
  colors_of_team.flatten
end



def team_names
  both_teams = []
  game_hash.each do |location, team_data|

    team_data.each do |attribute, data|
      if attribute == :team_name
        both_teams << game_hash[location][:team_name]
      end
    end
  end
  return both_teams.flatten
end



def player_numbers(team)
  player_nums = []
  game_hash.each do |location, team_data|

    team_data.each do |attribute, data|
      if attribute == :players

        data.each do |name, stats|
          if team == game_hash[location][:team_name]
              player_nums << game_hash[location][attribute][name][:number]
          end
        end
      end
    end
  end
  return player_nums.flatten
end



def player_stats(player)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |name, stats|
          if player == name
          return stats.sort_by { |stat, value| stat}.to_h
          end
        end
      end
    end
  end
end


def big_shoe_rebounds
  shoe_size = 0
  most_rebounds = 0
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players

        data.each do |name, player_stats|
          if player_stats[:shoe] > shoe_size
            shoe_size = player_stats[:shoe]
            most_rebounds = player_stats[:rebounds]
          end
        end
      end
    end
  end
  most_rebounds
end
