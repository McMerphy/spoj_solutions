$stdin = File.open('input.txt')
$stdout = File.open('output.txt', 'w')
t = gets.to_i

lst = [2]
3.step(31623, 2) do |i|
  max = Math.sqrt i +1
  prime = true
  lst.each do |j|
    if j > max 
      break
    end
    if max % j == 0
      prime = false
      break
    end
  end
  if prime
    lst << i 
  end
end

t.times do
  a, b = gets.split.map {|elem| elem.to_i}
  a = 2 if a == 1
  puts a if a == 2 
  a += 1 if a % 2 == 0 
  while a < b do
    prime = true
    max = Math.sqrt a + 1
    if a > 10 && (a % 5 ==0 || a % 3 ==0)
      a += 2
      next
    end
    lst.each do |j|
      if j > max 
        break
      end
      if a % j == 0
        prime = false
        break
      end
    end
    if prime
      puts a
    end
    a += 2
  end
  puts "\n"
end
