class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
new = "";
array = str.split(' ');

q = 0
for i in (0...array.length)
q += 1

if array[i].length > 4
cap = array[i].split('');
int_cap = cap[0];
up_check = cap[0].capitalize;
if (up_check == int_cap)
new += "Marklar";
else
new += "marklar";
end
else
new += array[i];
end

if (array[i].include? "?")
new += "?";
end
if (array[i].include? ".")
new += ".";
end

if (q == array.length)
new += "";
else
new += " ";
end

end


    return new 
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

    def self.even_fibonacci(nth)
    # TODO: Implement this method

def self.fib_r(a, b, nth)
  nth == 0 ? a : fib_r(b, a + b, nth - 1)
end

def self.fib(nth)
  fib_r(0, 1, nth)
end

p = (1..nth).map{ |nth| fib(nth) }

sum = 0
for i in (0...p.length)
#print "FIB: ", p[i], "\n";
if p[i] % 2 == 1 then
#        print "ODD\n";
else
#        print "EVEN\n";
sum = sum + p[i];
end

end

return sum

    end

end
