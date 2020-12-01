array = File.read('resources/01.txt').split("\n").map(&:to_i) 

def day01(array)
  array.each do |i|
    val = 2020-i
    return i * val if array.include?(val)
  end
end