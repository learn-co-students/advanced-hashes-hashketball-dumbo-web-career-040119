# Write your code here!
 
def game_hash
  game_hash = {
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
        :slam_dunks => 1,
      }, 
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7,
       }, 
       "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15,
      },
        "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5,
      }, 
        "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1,
      }}
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
        :slam_dunks => 2,
      }, 
      "Bismak Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10,
       }, 
       "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5,
      },
        "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0,
      },
        "Brendan Haywood" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12,
      }}
    }
  }
end 

def players 
  game_hash[:home][:players].merge(game_hash[:away][:players])
end

def pfind(name)
  players.fetch(name)
end

def teams
  game_hash.values
end

def tfind(team_name)
  teams.find {|team| team.fetch(:team_name) == team_name}
end

def num_points_scored(name)
  player = pfind(name)
  player.fetch(:points)
end

def num_points_scored(player_name)
all_players = game_hash[:away][:players].concat(game_hash[:home][:players])

all_players = game_hash[:away][:players] + game_hash[:home][:players]

found_player = game_hash[:away][:players].find do |player_hash|
  player_name == player_hash[:player_name]
end
  found_player[:points]
end

def shoe_size(name)
   player = pfind(name)
  player.fetch(:shoe)
end

def team_colors(team_name)
  if team_name == "Brooklyn Nets"
      ["Black", "White"]
  else
    ["Turquoise", "Purple"]
  end
end

def team_names
  arr =[]
  arr.push(game_hash[:home][:team_name])
  arr << (game_hash[:away][:team_name])
  arr
end

def player_numbers(team_name)
 tfind(team_name)[:players].map{ |player, stats| stats[:number] }
end

def player_stats(name)
  pfind(name)
end

def player_biggest_shoe_size
  players.max_by{|player, stats| stats.fetch(:shoe)}[1]
end

def big_shoe_rebounds
  player_biggest_shoe_size.fetch(:rebounds)
end










# If you'd like to work on the bonus, uncomment these tests.

describe 'bonus' do

  describe '#most_points_scored' do

    it 'returns Ben Gordon' do
      expect(most_points_scored).to eq("Ben Gordon")
    end

  end

  describe '#winning_team' do

    it 'returns the Brooklyn Nets' do
      expect(winning_team).to eq("Brooklyn Nets")
    end

  end

  describe '#player_with_longest_name' do

    it 'returns Brendan Haywood' do
      expect(player_with_longest_name).to eq("Brendan Haywood")
    end

  end

end

describe 'super bonus' do

  describe '#long_name_steals_a_ton?' do

    it 'returns true' do
      expect(long_name_steals_a_ton?).to eq(true)
    end

  end

end

def most_points_scored
  players.max_by{|player, stats| stats.fetch(:points)}[0]
end

# def winning_team
# ("Brooklyn Nets")
# end

def player_points(team_name)
 tfind(team_name)[:players].map{ |player, stats| stats[:points] }
end

def winning_team
 if player_points("Brooklyn Nets").reduce(:+) > player_points("Charlotte Hornets").reduce(:+)
  "Brooklyn Nets"
 else
  "Charlotte Hornets"
 end
end

def player_with_longest_name
  players.max_by{|player, stats| player.length}[0]
end

def player_most_steals
  players.max_by{|player, stats| stats.fetch(:steals)}[0]
end

def long_name_steals_a_ton?
  player_with_longest_name == player_most_steals
end

def new_rebounds
  players = game_hash[:home][:players]
  players.map {|player, stat| stat.fetch(:rebounds) += 1}
end

def new_rebounds
  players = game_hash[:home][:players]
  players.map { |player, stats| stats[:rebounds] += 1 }
end 