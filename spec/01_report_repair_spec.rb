require '01_report_repair'

describe "day01" do
  
  it "returns a value" do
    array = [1721,979,366,299,675,1456]
    expect(day01(array)).to eq(514579)
  end

  it "part 2 returns a value" do
    array = [1721,979,366,299,675,1456]
    expect(day01_p2(array)).to eq(241861950)
  end

end