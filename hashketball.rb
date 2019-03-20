# Write your code here!
 
def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" =>{
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" =>{
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" =>{
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" =>{
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" =>{
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
      :colors => ["Turquoise","Purple"],
      :players => {
        "Jeff Adrien" =>{
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" =>{
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" =>{
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" =>{
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" =>{
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        },
      }
    }
  }
end

def num_points_scored(name)
  game_hash.each do |x, hORaTab|
    hORaTab.each do |x, playersTab|
      if x == :players
        playersTab.each do |x, nameTab|
          if x == name
            nameTab.each do |x, points|
              if x == :points
                return points
              end
            end
          end
        end
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |x, hORaTab|
    hORaTab.each do |x, playersTab|
      if x == :players
        playersTab.each do |x, nameTab|
          if x == name
            nameTab.each do |x, shoeSize|
              if x == :shoe
                return shoeSize
              end
            end
          end
        end
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |x, hORaTab|
    hORaTab.each do |x, colorsTab|
      if colorsTab == team
        return hORaTab[:colors]
      end
    end
  end
end

def team_names
  teams = []
  game_hash.each do |x, hORaTab|
    hORaTab.each do |x, stuff|
      if x == :team_name
        teams.push(hORaTab[:team_name])
      end
    end
  end
  return teams
end

def player_numbers(team)
  numbersP = []
  game_hash.each do |x, hORaTab|
    hORaTab.each do |x, playersTab|
      if playersTab == team
        hORaTab[:players].each do |x, playerName|
          playerName.each do |x, playerNumbers|
            if x == :number
              numbersP.push(playerName[:number])
            end
          end
        end
      end
    end
  end
  return numbersP
end

def player_stats(name)
  game_hash.each do |x, hORaTab|
    hORaTab.each do |x, playersTab|
      if x == :players
        playersTab.each do |x, nameTab|
          if x == name
            return playersTab[x]
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  bigShoe = 0
  raybands = 0
  game_hash.each do |x, hORaTab|
    hORaTab.each do |x, playersTab|
      if x == :players
        playersTab.each do |x, stuff|
          if stuff[:shoe] > bigShoe
            bigShoe = stuff[:shoe]
            raybands = stuff[:rebounds]
          end
        end
      end
    end
  end
  return raybands
end
