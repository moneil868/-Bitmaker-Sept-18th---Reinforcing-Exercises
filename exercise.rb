ballots = [
             {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
             {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
             {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
             {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
             {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
             {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}
         ]


first_place = 3
second_place = 2
third_place = 1

def calculate_scores(ballots)
  scores = {}

  ballots.each do |ballot|

    #iterate through the ballots

    ballot.each do |k, v|

      #calculate the actual score for the various voting positions
      if scores.has_key?(v)
        case
          when k == 1
            scores[v] += 3
          when k == 2
            scores[v] += 2
          when k == 3
            scores[v] += 1
        end
      else
        scores[v] = 0
      end
    end

  end
  #display the key that has the highest value
  winner = scores.max_by{ |k,v| v}
  puts
  puts "Calculating points...."
  puts "#{winner[0]} has won with #{winner[1]} points."
  puts

end


calculate_scores(ballots)
