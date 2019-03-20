require "pry"

def game_hash
{
   :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {"Alan Anderson" =>
         {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
         },
                "Reggie Evans" =>
         {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
         },
                 "Brook Lopez" =>
         {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
         },
                  "Mason Plumlee" =>
         {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
         },
                    "Jason Terry" =>
         {
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
    :players => {"Jeff Adrien" =>
         {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
         },
                 "Bismak Biyombo" =>
         {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
         },
                  "DeSagna Diop" =>
         {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
         },
                    "Ben Gordon" =>
         {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
         },
                    "Brendan Haywood" =>
         {
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

def num_points_scored name
     game_hash.each do |k, v|
            v.each do |k, v|
              if k == :players
                v.each do |k, v|
                  if k == name
                    v.each do |k, v|
                      if k == :points
                        return v
                      end
                    end
                  end
                end
              end
            end
          end

end

def shoe_size name
            game_hash.each do |k, v|
            v.each do |k, v|
              if k == :players
                v.each do |k, v|
                  if k == name
                    v.each do |k, v|
                      if k == :shoe
                        return v
                      end
                    end
                  end
                end
              end
            end
          end

end

def team_colors team_name
  team = game_hash.values.find {|team| team.fetch(:team_name) == team_name}
  team.fetch :colors

end

def team_names
  teams = game_hash.values.map{|t| t.fetch(:team_name)}
end

def player_numbers team_name
    team = game_hash.values.find {|team| team.fetch(:team_name) == team_name}
    team[:players].map {|players, stats| stats[:number]}
end

def player_stats player
  players = game_hash.values.map{|t| t.fetch(:players)}
  players.each do |k, v|
    k.each do |k, v|
      if player == k
        return v
      end
    end

  end

end

def big_shoe_rebounds

players = game_hash[:home][:players].merge(game_hash[:away][:players])
players.max_by{|player, stats| stats.fetch(:shoe)}[1].fetch(:rebounds)


end

def most_points_scored

players = game_hash[:home][:players].merge(game_hash[:away][:players])

players.max_by{|player, stats| stats.fetch(:points)}[0]

end

def winning_team

home_team = game_hash[:home][:players]
home_score = 0
home_team.collect {|player, stats| home_score += stats.fetch(:points)}
p home_score


away_team = game_hash[:away][:players]
away_score = 0
away_team.collect {|player, stats| away_score += stats.fetch(:points)}
p  away_score

if home_score > away_score
  p game_hash[:home][:team_name]
elsif home_score < away_score
  p game_hash[:away][:team_name]
else
  p "Tied"
end

end

def player_with_longest_name

players = game_hash[:home][:players].merge(game_hash[:away][:players])

players.max_by(1){|player, stats| player.length}[0][0]


end
