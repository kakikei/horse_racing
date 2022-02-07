5.times.each do |i|
  horse = Horse.create(name: "horse_#{i}")
  5.times.each do |j|
    HorseDetail.create(
      horse: horse,
      date: Time.now,
      weather: "晴れ",
      race_name: "hoge0",
      ranking: i,
      popularity: i + 1,
      jockey: "hoge1",
      race_condition: "hoge2",
      race_distance: "hoge3",
      time: 1.0,
      dressing_difference_time: 2.0,
      body_weight: "hoge4"
    )
  end
end
