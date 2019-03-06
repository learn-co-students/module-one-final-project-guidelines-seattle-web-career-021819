class Round < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :game
  @@current_round = ""

  def self.create_round
    @@current_round = self.create(correct?: nil, incorrect?: nil, recipe_id: nil, game_id: Game.new_game.id)
  end

  def self.current_round
    @@current_round
  end

  def self.save_round(answer)
    if answer == true
      round = @@current_round.update(correct?: true, recipe_id: Recipe.current_recipe)
    else
      round = @@current_round.update(incorrect?: false, recipe_id: Recipe.current_recipe)
    end
  end
end
