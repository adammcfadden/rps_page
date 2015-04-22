require('sinatra')
require('sinatra/reloader')
require('./lib/beats')
also_reload('/lib/**/8.rb')

get('/') do
  erb(:index)
end

get('/winner') do
  did_player_one_win = params.fetch('one_input').beats?(params.fetch('two_input'))
  if did_player_one_win == nil
    @winner = 'no one wins!'
  elsif did_player_one_win
    @winner = "player one"
  else
    @winner = "player two"
  end
  erb(:winner)
end
