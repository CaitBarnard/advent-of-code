array = File.read('resources/01.txt').split("\n").map(&:to_i) 

def day01(array)
  array.each do |i|
    val = 2020-i
    return i * val if array.include?(val)
  end
end

def day01_p2(array)
  array.each do |i|
    val = 2020-i
    array.each do |j|
      val2 = val - j
      if array.include?(val2)
         return i * j * val2
      end
    end
  end
end