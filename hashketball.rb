# def game_hash
#  {
#   :home => {
#     :team_name => "Brooklyn Nets",
#     :colors => ["Black", "White"],
#     :players => {
#       :player1 => {
#         :name => "Alan Anderson",
#         :number => 0,
#         :shoe_size => 16,
#         :stats => {
#           :points => 22,
#           :rebounds =>12,
#           :assists => 12,
#           :steals => 3,
#           :blocks => 1,
#           :slam_dunks => 1
#         }
#       },
#       :player2 => {
#         :name => "Reggie Evans",
#         :number => 30,
#         :shoe_size => 14,
#         :stats => {
#           :points => 12,
#           :rebounds => 12,
#           :assists => 12,
#           :steals => 12,
#           :blocks => 12,
#           :slam_dunks => 7
#         }
#       },
#       :player3 => {
#         :name => "Brook Lopez",
#         :number => 11,
#         :shoe_size => 17,
#         :stats => {
#           :points => 17,
#           :rebounds => 19,
#           :assists => 10,
#           :steals => 3,
#           :blocks => 1,
#           :slam_dunks => 15
#         }
#       },
#       :player4 => {
#         :name => "Mason Plumlee",
#         :number => 1,
#         :shoe_size => 19,
#         :stats => {
#           :points => 26,
#           :rebounds => 12,
#           :assists => 6,
#           :steals => 3,
#           :blocks => 8,
#           :slam_dunks => 5
#         }
#       },
#       :player5 => {
#         :name => "Jason Terry",
#         :number => 31,
#         :shoe_size => 15,
#         :stats => {
#           :points => 19,
#           :rebounds => 2,
#           :assists => 2,
#           :steals => 4,
#           :blocks => 11,
#           :slam_dunks => 1
#         }
#       }
#     }
#   },
#   :away => {
#     :team_name => "Charlotte Hornets",
#     :colors => ["Turquoise", "Purple"],
#     :players => {
#       :player1 => {
#         :name => "Jeff Adrien",
#         :number => 4,
#         :shoe_size => 18,
#         :stats => {
#           :points => 10,
#           :rebounds => 1,
#           :assists => 1,
#           :steals => 2,
#           :blocks => 7,
#           :slam_dunks => 2
#         }
#       },
#       :player2 => {
#         :name => "Bismak Biyombo",
#         :number => 0,
#         :shoe_size => 16,
#         :stats => {
#           :points => 12,
#           :rebounds => 4,
#           :assists => 7,
#           :steals => 7,
#           :blocks => 15,
#           :slam_dunks => 10
#         }
#       },
#       :player3 => {
#         :name => "DeSagna Diop",
#         :number => 2,
#         :shoe_size => 14,
#         :stats => {
#           :points => 24,
#           :rebounds => 12,
#           :assists => 12,
#           :steals => 4,
#           :blocks => 5,
#           :slam_dunks => 5
#         }
#       },
#       :player4 => {
#         :name => "Ben Gordon",
#         :number => 8,
#         :shoe_size => 15,
#         :stats => {
#           :points => 33,
#           :rebounds => 3,
#           :assists => 2,
#           :steals => 1,
#           :blocks => 1,
#           :slam_dunks => 0
#         }
#       },
#       :player5 => {
#         :name => "Brendan Haywood",
#         :number => 33,
#         :shoe_size => 15,
#         :stats => {
#           :points => 6,
#           :rebounds => 12,
#           :assists => 12,
#           :steals => 22,
#           :blocks => 5,
#           :slam_dunks => 12
#         }
#       }
#     }
#   }
# }
# end
#
# def num_points_scored(player_name)
# array2 = []
# game_hash.each do |location, team_data|
#     team_data.each do |attribute, values|
#         if attribute == :players
#           values.each do |person, data|
#             data.each do |i, j|
#               if person == player_name && i == :points
#                 array2.push(j)
#               end
#
#             end
#           end
#         end
#     end
# end
# return array2[0]
# end
#
# def shoe_size(player_name, game)
#   game.each do |team_name, team_hash|
#     team_hash[:players].each do |player, player_hash|
#       if player_hash[:name] == player_name
#         return player_hash[:shoe_size]
#       end
#     end
#   end
# end
#
# def team_colors(team)
#   new_array = []
#   game_hash.each do |keys, values|
#     values.each do |data_labels, data|
#       if data == team
#         new_array << game_hash[keys][:colors]
#       end
#     end
#   end
#   new_array.flatten
# end
#
# def team_names
#   new_array = []
#   game_hash.each do |keys, values|
#     values.each do |data_labels, data|
#       if data_labels == :team_name
#         new_array << data
#       end
#     end
#   end
#   new_array
# end
#
# def player_numbers(team)
#   new_array = []
#   if game_hash[:home][:team_name] == team
#     game_hash[:home][:players].each do |name, stats|
#       stats.each do |stat_label, stat_value|
#         if stat_label == :number
#           new_array << stat_value
#         end
#       end
#     end
#   else
#     game_hash[:away][:players].each do |name, stats|
#       stats.each do |stat_label, stat_value|
#         if stat_label == :number
#           new_array << stat_value
#         end
#       end
#     end
#   end
#   new_array
# end
#
# def player_stats(name)
#   player_stats = nil
#   game_hash.each do |home_away, team_info|
#     team_info.each do |data_label, data|
#       if data_label == :players
#         data.each do |player_name, stats|
#           if player_name == name
#             player_stats = stats
#           end
#         end
#       end
#     end
#   end
#   player_stats
# end
#
# def big_shoe_rebounds
#   biggest_shoe = nil
#   big_shoe_player_rebounds = nil
#   game_hash.each do |home_or_away, team_info|
#     team_info.each do |data_label, data|
#       if data_label == :players
#         data.each do |player_name, stats|
#           stats.each do |stat_name, value|
#             if stat_name == :shoe
#               if biggest_shoe == nil
#                 biggest_shoe = value
#                 big_shoe_player_rebounds = game_hash[home_or_away][:players][player_name][:rebounds]
#               elsif value > biggest_shoe
#                 biggest_shoe = value
#                 big_shoe_player_rebounds = game_hash[home_or_away][:players][player_name][:rebounds]
#               end
#             end
#           end
#         end
#       end
#     end
#   end
#   big_shoe_player_rebounds
# end
# #
# def player_with_most_points(game)
#   max_player = nil
#   game.each do |team_name, team_hash|
#     team_hash[:players].each do |player, player_hash|
#       max_player ||= player_hash
#       max_player = player_hash if player_hash[:stats][:points] > max_player[:stats][:points]
#     end
#   end
#
#   max_player[:name]
# end
#
# def team_with_most_points(game)
#   max_team = nil
#   game.each do |team_name, team_hash|
#     sum = 0
#     team_hash[:players].each do |player, player_hash|
#       sum += player_hash[:stats][:points]
#     end
#
#     team_hash[:sum] = sum
#     max_team ||= team_hash
#     max_team = team_hash if team_hash[:sum] > max_team[:sum]
#   end
#
#   max_team[:name]
# end
#
# def player_with_longest_name(game)
#   max_player = nil
#   game.each do |team_name, team_hash|
#     team_hash[:players].each do |player, player_hash|
#       max_player ||= player_hash
#       max_player = player_hash if player_hash[:name].length > max_player[:name].length
#     end
#   end
#
#   max_player[:name]
# end

# # Super Bonus:
# # Write a method that returns true if the player with the longest name had the most steals:
# #
# def player_with_most_steals_and_name(game)
#   max_player = nil
#   game.each do |team_name, team_hash|
#     team_hash[:players].each do |player, player_hash|
#       max_player ||= player_hash
#       max_player = player_hash if player_hash[:stats][:steals] > max_player[:stats][:steals]
#     end
#   end
#
#   max_player[:name] == player_with_longest_name(game)


require "pry"

# Write your code here!

def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
      :name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      {
      :name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      {
      :name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      {
      :name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
      },
      {
      :name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      }
    ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
      :name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
      },
      {
      :name => "Bismak Biyombo",
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 7,
      :blocks => 15,
      :slam_dunks => 10
      },
      {
      :name => "DeSagna Diop",
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
      },
      {
      :name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
      },
      {
      :name => "Brendan Haywood",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
      }
    ]
  }
}
end


def num_points_scored(name)
  answer = nil

  game_hash.each do |team, team_hash|
    players_array = team_hash[:players]
      players_array.each do |players_team_hash|
        if players_team_hash[:name] == name
          answer = players_team_hash[:points]
        end
      end
  end
  return answer
end


def shoe_size(name)
  answer = nil

  game_hash.each do |team, team_hash|
    players_array = team_hash[:players]
      team_hash[:players].each do |players_team_hash|
        if players_team_hash[:name] == name
          answer = players_team_hash[:shoe]
        end
      end
  end
  answer
end


def team_colors (team_name)
    colors = nil
    game_hash.each do |team, team_details|
        if team_details[:team_name] == team_name
            colors = team_details[:colors].flatten
        end
    end
    colors
end


def team_names
  game_hash.collect do |team, team_details|
    team_details[:team_name]
  end
end


def player_numbers (team_name)
  player_numbers_list = []
  game_hash.each do |team, team_details|
    if team_details[:team_name] == team_name
      team_details[:players].each do |player|
        player.each do |key, value|
          if key == :number
            player_numbers_list << value
          end
        end
      end
    end
  end
  player_numbers_list
end


def player_stats(player_name)
  player_stats = {}
  game_hash.each do |team, team_details|
    team_details[:players].each do |stats|

      if stats[:name] == player_name
        stats.delete(:name)
        player_stats = stats
      end
    end
  end
  return player_stats
end

def big_shoe_rebounds
  big_shoes_guy = 0
  rebounds = 0
    game_hash.each do | team, team_details|
      team_details[:players].each do | stats |
        if stats[:shoe] > big_shoes_guy
          big_shoes_guy = stats[:shoe]
          rebounds = stats[:rebounds]
        end
      end
    end
  rebounds
end
