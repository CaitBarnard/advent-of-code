require '03_toboggan_trajectory'

describe "day03" do

  input = "..##.......
  #...#...#..
  .#....#..#.
  ..#.#...#.#
  .#...##..#.
  ..#.##.....
  .#.#.#....#
  .#........#
  #.##...#...
  #...##....#
  .#..#...#.#"
  
  it "reads the input into an array" do
    d03 = Day03.new
    result = d03.parseRoute(input)
    expect(result[0]).to eq("..##.......")
  end

  it "returns number of trees in path" do
    d03 = Day03.new
    expect(d03.day03(input)).to eq(7)
  end

end