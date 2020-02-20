def bowling(scores)
  # スコアの合計点を格納するsum, スペア、ストライクが何flame目に発生したか確認する配列checkの宣言
  sum = 0
  check = Array.new(10, [0, 0])

  scores.map.with_index do |score, index|
    # 10flame目の場合(3投球できる可能性がある例外処理)
    if index == 9
      sum += score[0] + score[1]
      # 3投球目がある場合
      if score[2].nil? == false
        sum += score[2]
      end
      break
    end
    # スコアを加算する
    sum += score[0] + score[1]
    # ストライクだった場合
    if score[0] == 10
      # 配列checkの、ストライクをとったflame数と同じ添字にストライク(2)を格納
      check[index] = 2
    # スペアの場合
    elsif score[0] + score[1] == 10
      # 配列checkの、スペアをとったflame数と同じ添字にスペア(1)を格納
      check[index] = 1
    end
  end

  check.map.with_index do |n,index|
    # 配列内のデータ型がIntegerの場合(ストライク, スペア)
    if n.class == Integer
      # ストライクかスペアをとった次の投球の加算処理
      sum += scores[index + 1][0]
      # ストライクの場合
      if n == 2
        # 次の投球がストライクかつ9flame目ではない場合
        if scores[index + 1][0] == 10 && index != 8
          # 次の投球の加算処理
          sum += scores[index + 2][0]
        else
          # 次の投球の加算処理
          sum += scores[index + 1][1]
        end
      end
    end
  end
  return sum
end
