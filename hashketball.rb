# Write your code here!
def game_hash

  game_hash = {
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
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
      },
    }
  },
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
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
    },
  }
}
}
end

def num_points_scored(player_name)

  game_hash.each do |location, team_hash|
    return team_hash[:players][player_name][:points] if team_hash[:players].include?(player_name)
    end
end


def shoe_size(player_name)
  game_hash.each do |location, team_data|
    return team_data[:players][player_name][:shoe] if team_data[:players].include?(player_name)
  end
end

def team_colors (team_name)
  game_hash.each do |status, team|
    return team[:colors] if team[:team_name] == team_name
  end
end

# def team_colors(team_name)
#   game_hash.each_with_object([]) do |(location, team_data), colors|
#     colors = team_data[:colors] if team_data[:team_name].downcase == team_name.downcase 
#   end
# end 



# def team_names
#   output = []
#   game_hash.each do |status, team|
#     output << team[:team_name]
#   end
#   output
# end

def team_names
  game_hash.each_with_object([]) do |(location, team_data), names|
    
    names << team_data[:team_name]
  end
end

def player_numbers (team_name)
  output = []
  game_hash.each_with_object([] )do |(status, team), numbers_array|
    if team[:team_name] == team_name
      team[:players].each do |name, stats|
        numbers_array << stats[:number]
      end
    end
  end

end

def player_stats (player)
  game_hash.each do |status, team|
    team[:players].each do |name, stats|
      return stats if name == player
    end
  end
end

def big_shoes
current_winner = {}
biggest_shoes = 0
game_hash.each do |status, team|
  team[:players].each do |name, stats|
    if stats[:shoe] > biggest_shoes
      biggest_shoes = stats[:shoe]
      current_winner = stats
    end
  end
end
return current_winner
end

def big_shoe_rebounds
  big_shoes[:rebounds]
end
