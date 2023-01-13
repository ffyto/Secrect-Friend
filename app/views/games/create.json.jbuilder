json.data do
  json.id @game.id
  json.couples @workers
  json.year_game @game.year_game
  json.worker_without_play @game.worker_without_play
end

