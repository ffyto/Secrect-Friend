json.data @games do |game|
  json.id game.id
  json.couples game.couples
  json.year_game game.year_game
  json.worker_without_play Worker.find(game.worker_without_play)
end
