# "..##.......
# #...#...#..
# .#....#..#.
# ..#.#...#.#
# .#...##..#.
# ..#.##.....
# .#.#.#....#
# .#........#
# #.##...#...
# #...##....#
# .#..#...#.#"
class Day03
  def initialize
    @pos = 0
  end

  def day03(input)
    trees = 0
    route = parseRoute(input)

    route.each do |row|
      next if row == route[0]
      #Take the next row, count the pos 3 along and check if it is hash or dot
      trees += 1 if row[@pos+3] == "#"
    end
    trees
  end

  def parseRoute(input)
    input.split("\n")
  end
end