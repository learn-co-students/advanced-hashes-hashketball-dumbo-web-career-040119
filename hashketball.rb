require "pry"
def game_hash
# hash = {}
# hash = {:home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players =>{}},
# :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players =>
# {}}}

  {
  :home=> {
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


def num_points_scored(player_name)
game_hash[:players].each do |player|
  if player[:name] == player_name
    return player[:points]
  end
end
end

def team_colors(string)
  i = 0
  b = ""
  arr = game_hash.keys
  while i < arr.length
      if game_hash.values[i].to_a.flatten.include?(string)
      b = game_hash.values[i][:colors]
      end
      i+=1
  end
  b
end



def player_stats(string)
  arr = game_hash.keys
box = []
  d = 0
  while d <  game_hash.keys.length  #0 <2...
  i = 0
            while i < game_hash[game_hash.keys[1]][:players].length
              if game_hash[arr[d]][:players][i].to_a.flatten.include?(string)
                box = game_hash[arr[d]][:players][i].to_a[1..-1].to_h
                end
              i+=1
      end
    d+=1
  end

  box

end

def team_names


end


def num_points_scored(string)
  i = 0
  r = []
  while i < game_hash.keys.length
  d = 0
          while d < game_hash[game_hash.keys[0]][:players].length   #0<5
               if game_hash[game_hash.keys[i]][:players][d].to_a.flatten.include?(string)
                   r = game_hash[game_hash.keys[i]][:players][d][:points]
              end
            d+=1
          end
    i+=1
    end
  r
end



def shoe_size(string)
  i = 0
  r = []
  while i < game_hash.keys.length
  d = 0
          while d < game_hash[game_hash.keys[0]][:players].length   #0<5
               if game_hash[game_hash.keys[i]][:players][d].to_a.flatten.include?(string)
                   r = game_hash[game_hash.keys[i]][:players][d][:shoe]
              end
            d+=1
          end
    i+=1
    end
  r
end



def player_numbers(string)
  arr = []
      if string == "Brooklyn Nets"
        i = 0
      elsif string == "Charlotte Hornets"
        i = 1
   end
  # while i < game_hash.keys.length
  d = 0
          while d < game_hash[game_hash.keys[0]][:players].length   #0<5
            arr << game_hash[game_hash.keys[i]][:players][d][:number]
            d+=1
     end
  arr
end

def team_names
abt = []
game_hash.each do |i,v|
abt << game_hash[i][:name]
end
abt

end
