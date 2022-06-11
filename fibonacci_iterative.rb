def fib(num)
   a, b = 0, 1
   index = 0
   while index <= num
    puts a
     a, b = b, a + b
     index += 1
   end
   puts "the #{num}th number is: #{a}"
end

fib(10)
