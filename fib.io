fib_recursive := method(n,
  if(n < 3, 1, fib_recursive(n - 1) + fib_recursive(n - 2))
)
 
fib_iterative := method(n,
  prev_prev := 0
  prev := 0
  sum := 1
  for(i, 2, n, 
    prev_prev = prev
    prev = sum
    sum = prev + prev_prev
  )
  sum
)
 
"-- Recursive Fibonacci --" println
for(i, 1, 10, fib_recursive(i) println)
 
"" println
 
"-- Iterative Fibonacci --" println
for(i, 1, 10, fib_iterative(i) println)