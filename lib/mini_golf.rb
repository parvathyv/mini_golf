# YOUR CODE HERE
def display_scores(file_path='../test/scores.csv')

    hash={}
    hash1={}


    hash[IO.foreach(file_path).map{|line| line.scan(/[a-zA-Z]/).join('')}]=
    IO.foreach(file_path).map{|line| line.scan(/\d+/).map(&:to_i).reduce(:+)}

    ctr=hash.keys.to_s.split().size

    hash.each do|k,v|
        1.upto(ctr-1) do|i|
          hash1[k[i]]=v[i]
        end
    end
    puts "Mini Golf Scores",$/
    ctr=1
    hash1.sort_by{|k,v| v}.each do|name, strokes|
        puts "#{ctr}. #{name} with #{strokes} strokes."
        ctr+=1
    end

end
