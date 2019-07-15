require('rspec')
require('leetspeak')


describe('#leetspeak') do
  it("returns the string as is if no leetspeak rules apply") do
    expect(leetspeak("snack")).to(eq("snack"))
  end

it('replaces every "e" or "E" in a string with a "3"') do
    expect(leetspeak("leek")).to(eq("l33k"))
  end

it('replaces every "o" in a string with a "0"') do
    expect(leetspeak("boo boo")).to(eq("b00 b00"))
  end

 it('replaces every "I" in a string with a "1"') do
    expect(leetspeak("I like Ike")).to(eq("1 lik3 1k3"))
  end

 it('replaces every "s" in a string with a "z"') do
    expect(leetspeak("snakes")).to(eq("snak3z"))
  end

  it('doessNOT replace the first letter when it is an 2') do
    expect(leetspeak("I scream you scream we all scream for raspberry ice cream.")).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am."))
  end
end
