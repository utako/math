require 'mathn'

puts 'input number'
numbers = [];
yn = gets.chomp;

while yn != "n"
  numbers << yn;
  puts 'input number'
  yn = gets.chomp;
end

f_numbers = numbers.collect{|i| i.to_f}
f_numbers

class Array
  
  # Find sum
  def sum
    inject(nil) { |sum, x| sum ? sum + x : x }
  end
  
  # Find mean
  def mean
    sum.to_f / size.to_f  
  end
  
  # Find population variance
  def pvariance
    value = inject(0) {|value, x| value ? value + (x - mean)**2 : x}
    value.to_f / size.to_f
  end
  
  # Find sample variance
  def svariance
    value = inject(0) {|value, x| value ? value + (x-mean)**2 : x}
    value.to_f / (size.to_f-1)
  end
  
  # Find population standard deviation
  def psdev
    Math.sqrt(pvariance)
  end
  
  # Find sample standard deviation
  def ssdev
    Math.sqrt(svariance)
  end
  
end

f_numbers
f_numbers.sum
f_numbers.mean
f_numbers.pvariance
f_numbers.svariance
f_numbers.psdev
f_numbers.ssdev
