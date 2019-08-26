50.times do 
  Band.create(
    name: Faker::Music.unique.band
  )
end
@bands = Band.count
@billboards = Billboard.count
200.times do
  Tune.create(
    band_id: rand(1...@bands),
    billboard_id: rand(1...@billboards),
    name: Faker::Music::GratefulDead.song,
    genre: Faker::Music.genre
  )
end