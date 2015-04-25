$stdin = File.open('input_rpn.txt')

n = gets.to_i
operations = ['+', '-', '*', '/', '^']

while n > 0 do
  line = gets.split("")
  operators = []
  output = ""
  i = 0
  while i < line.length do
    if operations.include? line[i] 
      operators << line[i]
      i += 1
      next
    end
    if line[i] == ')'
      output += operators.pop
      i += 1
      next
    end
    if line[i] == '('
      i += 1
      next
    end
    output += line[i]
    i += 1
  end
  puts output
  n -= 1
end

