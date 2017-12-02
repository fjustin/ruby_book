require 'rspec'
require '../lib/fizz_buzz'

describe 'Fizz Buzz' do
  it 'fizz_buzz' do
    expect(fizz_buzz(1)).to eq '1'
    expect(fizz_buzz(2)).to eq '2'
    expect(fizz_buzz(3)).to eq 'Fizz'
  end

end
