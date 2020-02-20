def bowling(scores)
  sum = 0
  scores.map do |flame|
    flame.map do |score|
      sum = sum + score
    end
  end
  return sum
end
