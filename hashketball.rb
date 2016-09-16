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
  points = 0
  stats = game_hash
  stats.each do |status, team_hash|
    team_hash[:players].each do |name, stats|
      points = stats[:points] if name == player_name
    end
  end
  points

end

def shoe_size(player_name)
  size = 0
  stats = game_hash
  stats.each do |status, team_hash|
    team_hash[:players].each do |name, stats|
      size = stats[:shoe] if name == player_name
    end
  end
  size

end

def team_colors (team_name)
  game_hash.each do |status, team|
    return team[:colors] if team[:team_name] == team_name
  end
end

def team_names
  output = []
  game_hash. each do |status, team|
    output << team[:team_name]
  end
  output
end

def player_numbers (team_name)
  output = []
  game_hash.each do |status, team|
    if team[:team_name] == team_name
      team[:players].each do |name, stats|
        output << stats[:number]
      end
    end
  end
  output
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
