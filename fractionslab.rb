require "rational"

def multiply(n1, d1, n2, d2)
  # code that multiplies them
  nn = (n1*n2)
  nd  = (d1*d2)
  simplify(nn, nd)
end



def divide(n1, d1, n2, d2)
    # code that divides them
    nn = (n1*d2)
    nd = (d1*n2)
    simplify(nn, nd)
end

def add(n1, d1, n2, d2)
  # code that adds them
  lcm = d1.lcm(d2)
  # numerator of first number to be added
  nn1 = n1*(lcm/d1)
  # denominator of first number to be added
  nd1 = lcm
  # numerator of second number to be added
  nn2 = n2*(lcm/d2)
  # denominator of second number to be added
  nd2 = lcm
  # add the numerators
  fn = nn1 + nn2
  # put the added numbers in an array
  [fn, lcm]
  simplify(fn, lcm)
end

def subtract(n1, d1, n2, d2)
  # code that subtracts them
  lcm = d1.lcm(d2)
  # numerator of first number to be added
  nn1 = n1*(lcm/d1)
  # denominator of first number to be added
  nd1 = lcm
  # numerator of second number to be added
  nn2 = n2*(lcm/d2)
  # denominator of second number to be added
  nd2 = lcm
  # add the numerators
  fn = nn1 - nn2
  # put the added numbers in an array
  [fn, lcm]
  # simplify the difference
  simplify(fn, lcm)
end

def simplify(n1, d1)
  # code that simplifies them
  gcf = n1.gcd(d1)
  # new numerator
    fn = n1/gcf
  # new denominator
    fd = d1/gcf
  # output the simplified fraction
    [fn, fd]
end

# code to output the fraction
def output_fraction(nd_array)
  n, d = nd_array
  if d == 1
    puts n
  else
  puts n.to_s + '/' + d.to_s
  end
end



# BONUS

# code to convert a into a mixed number
def mixed_number(n, d)
  if n < d
    simp_array = simplify(n, d)
    num = simp_array[0]
    den = simp_array[1]
    puts "#{n}/#{d} or #{num}/#{den} can't be converted to a mixed number (it is less than 1)."
  else
    whole = n/d
    frac = n%d
    if frac != 0
    simp_array = simplify(frac, d)
    numerator = simp_array[0]
    denominator = simp_array[1]
    puts "#{whole} #{numerator}/#{denominator}"
    else
      puts "#{whole}"
      end
  end
end

# code to convert a fraction into a decimal
def decimal(n, d)
  simp_array = simplify(n, d)
  nn = simp_array[0].round(2)
  nd = simp_array[1].round(2)
  dec = nn/nd
  puts "#{dec}"
end



# TEST CODE
#output_fraction(multiply(-3, 1, -1, 1))
#output_fraction(divide(3, 1, 2, 1))
#output_fraction(add(2, 2, 4, 3))
#output_fraction(subtract(2, 3, 1, 1))
#output_fraction(simplify(18, 9))
#mixed_number(7, 5)
#decimal(-5, 8)

