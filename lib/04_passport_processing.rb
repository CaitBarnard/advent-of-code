class Day04
# input = File.readlines('resources/04.txt')
input = "ecl:gry pid:860033327 eyr:2020 hcl:#fffffd
byr:1937 iyr:2017 cid:147 hgt:183cm

iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884
hcl:#cfa07d byr:1929

hcl:#ae17e1 iyr:2013
eyr:2024
ecl:brn pid:760753108 byr:1931
hgt:179cm

hcl:#cfa07d eyr:2025 pid:166559648
iyr:2011 ecl:brn hgt:59in"

  def day04(input)
    count = 0
    passports = parsePassports(input)
    passports.each do |passport|
      count += 1 if ["byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid", "cid"].all? { |field| passport.include? field }
    end
    count
  end

  def parsePassports(input)
    sorted = input.split("\n")
    final = [""]
    index = 0
    sorted.each do |passport|
      if passport != nil
        final[index] << passport
      else
        index += 1
      end
    end
    p final
  end

end