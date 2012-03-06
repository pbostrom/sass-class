require 'pt1'

describe 'palindrome?' do 
  it 'tests if a string is a palindrome' do
    palindrome?("racecar").should eq(true)
    palindrome?("Abracadabra").should eq(false)
    palindrome?("A man, a plan, a canal -- Panama").should eq(true)
    palindrome?("Madam, I'm Adam!").should eq(true)
  end
end

describe 'count_words' do
  it 'tests word count in a string' do
    count_words("A man, a plan, a canal -- Panama").should eq({'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1})
    count_words("Doo bee doo bee doo").should eq({'doo' => 3, 'bee' => 2})
  end
end
