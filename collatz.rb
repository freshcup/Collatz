def collatz(n)
  array = [n]
  while n > 1
    
    if n.even?
      n = (n/2)
    elsif
      n = (3*n + 1)
    end
    array << n
  end
  return array
end

def length(n)
  array = collatz(n)
  length = array.length
  return length
end

score = 0
num = 0
(1..1_000_000).each do |i|
  l = length(i)
  if l > score
    score = l
    num = i
  end
  
end
 
puts "Find the number (1 to 1,000,000) with the longest Collatz sequence."
puts "---------------"
puts "When (n) is equal to:"
puts num
puts "It produces a Collatz sequence of:"
puts score
#puts "---------------"