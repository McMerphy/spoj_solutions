$stdin = File.open('input_rpn.txt')

n = gets.to_i

while n > 0 do
  line = gets.split("")
  level = 0
  data = []
  i = 1
  while i < line.length do
    level =+ 1 if line[i] == '('
    if line[i] == ')'
      puts ')'
    end
    i += 1
  end
  n -= 1
end