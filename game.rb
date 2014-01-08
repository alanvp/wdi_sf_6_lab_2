pages_with_questions = {}
File.open("story.txt", "r") do |infile|	
 	
  while (line = infile.gets)
    if line.index('~p')
      key = line
      pages_with_questions[key] = ""
    else
      pages_with_questions[key] += line 
      
    end
  end 
end

p1 = pages_with_questions.select {|key, value| key.index('~p1')}
p2 = pages_with_questions.select {|key, value| key.index('~p2')}
p3 = pages_with_questions.select {|key, value| key.index('~p3')}
p4 = pages_with_questions.select {|key, value| key.index('~p4')} 

output = File.open("output.txt", "w")
play_again = true

while play_again
	p1.each {|key, value| 
		puts value
		output.puts value
	}

	puts "Enter choice number (1,2, or 3):"
	output.puts "Enter choice number (1,2, or 3):"
	choice = gets.to_i
	output.puts choice.to_s + "\n"
	
	if choice == 1
		p2.each {|key, value| 
			puts value
			output.puts value
		}
	elsif choice == 2
		p3.each {|key, value| 
			puts value
			output.puts value
		}
	elsif choice == 3
		p4.each {|key, value| 
			puts value
			output.puts value
		}
	end
	
	puts "Play again? (Y or N)"
	if gets.chomp == "N" then play_again = false end
end