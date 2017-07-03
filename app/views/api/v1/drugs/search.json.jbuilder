json.array! @drugs.each do |drug|
  json.id drug.id
  json.name drug.name
  json.effects drug.side_effects
end