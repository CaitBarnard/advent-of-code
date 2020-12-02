require '02_password_philosophy'

describe "day02" do

  it "parses a single password requirement" do
    requirement = "1-3 a: abcde"
    expect(parse(requirement)).to eq([1, 3, "a", "abcde"])
  end

  it "returns true if password requirement is valid" do
    requirement = "1-3 a: abcde"
    expect(check_valid?(requirement)).to be(true)
  end

  it "returns false if password requirement is invalid" do
    requirement = "1-3 b: cdefg"
    expect(check_valid?(requirement)).to be(false)
  end
  
  it "returns number of valid passwords" do
    requirements = ["1-3 a: abcde", "1-3 b: cdefg", "2-9 c: ccccccccc"]
    expect(day02(requirements)).to eq(2)
  end

end