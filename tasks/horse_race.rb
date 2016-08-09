def horse_race(horses)
  horses = []
  horses.shuffle
  horses.each_with_index do |horse, index|
    say "#{index +1 } #{horse}!"
  end
end

horse_race(horses)
