def initialize()
  @count = 0
  requirements = File.readlines('resources/02.txt')
end

def parse(requirement)
  range, char, password = requirement.delete(':').split(' ')
  low, high = range.split('-').map(&:to_i)
  [low, high, char, password]
end

def check_valid?(input)
  low, high, char, password = parse(input)
  password.count(char).between?(low,high)
end

def day02(requirements)
  requirements.each do |input|
    @count += 1 if check_valid?(input)
  end
  @count
end