<<<<<<< HEAD
some change
=======
require 'pry'

def game_hash
  {
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
      :colors => [ "Turquoise", "Purple"],
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

def num_points_scored(player_name)
  points = {}
  game_hash.each do |home_and_away, attributes_hash|
    # binding.pry
    game_hash[home_and_away][:players].each do |name, stats_hash|
      # binding.pry
      points.store(name, stats_hash[:points])
    end
  end
  points[player_name]
  # binding.pry
end

def shoe_size(player_name)
  shoe_sizes = {}
  game_hash.each do |home_and_away, attributes_hash|
    # binding.pry
    game_hash[home_and_away][:players].each do |name, stats_hash|
      # binding.pry
      shoe_sizes.store(name, stats_hash[:shoe])
    end
  end
  shoe_sizes[player_name]
  # binding.pry
end

# puts shoe_size("Mason Plumlee") # => 19

def team_colors(team_name)
  if team_name == game_hash[:home][:team_name]
    return game_hash[:home][:colors]
  else
    return game_hash[:away][:colors]
  end
end


def team_names
  names = []
  game_hash.each do |home_and_away, attributes_hash|
    names << game_hash[home_and_away][:team_name]
  end
  names
end


def player_numbers(team_name)
  numbers = {}
  game_hash.each do |home_and_away, attributes_hash|
    numbers.store(game_hash[home_and_away][:team_name], [])
  end
  # binding.pry
  game_hash.each do |home_and_away, attributes_hash|
    # binding.pry
    numbers.each do |team, jersey_number|
      # binding.pry
      game_hash[team][:players].each do |name, stats_hash|
        # binding.pry
        numbers[team] << game_hash[home_and_away][:players][name][:number]
      end
    end
  end
  numbers[team_name]
  # binding.pry
end


def player_stats

end


def big_shoe_rebounds

end

# puts player_numbers("Brooklyn Nets")


# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         binding.pry
#
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             binding.pry
#       end
#     end
#   end
# end
# good_practices
>>>>>>> 65d7dd40ef8674e07984f1840e84716968ecd50a
