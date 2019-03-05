def start_game(user)
  new_game = Game.create
  new_game_session = GameSession.new(user_id: user.id, game_id: new_game.id)
end
