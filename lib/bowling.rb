def bowling(scores)
  sum = 0
  check = Array.new(10, [0, 0])
  scores.map.with_index do |score, index|
    sum += score[0] + score[1]

    if score[0] == 10
      check[index, 0] = 2
    elsif score[0] + score[1] == 10
      check[index, 1] = 1
    end
  end

  check.map.with_index do |n,index|
    if n.class == Integer
      sum += scores[index + 1][0 ]
      if n == 2
        if scores[index + 1] == 10
          sum += scores[index + 2][0]
        else
          sum += scores[index + 1][1]
        end
      end
    end
  end

  return sum
end
