10.times do 
  Band.create(
    name: Faker::Music.band
  )
end
50.times do
  Tune.create(
    name: Faker::Music::GratefulDead.song,
    genre: Faker::Music.genre
  )
end