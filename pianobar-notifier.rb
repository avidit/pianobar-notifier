#!/usr/bin/ruby

if ARGV.shift == 'songstart'
  songinfo = {}

  STDIN.each_line { |line| songinfo.store(*line.chomp.split('=', 2))}
  `terminal-notifier \
  -appIcon "https://www.pandora.com/img/pandora_favicon_144.png" \
  -contentImage "#{songinfo['coverArt']}" \
  -title "Now Playing" \
  -message "#{songinfo['title']}\n by #{songinfo['artist']} on #{songinfo['album']}"`
end
