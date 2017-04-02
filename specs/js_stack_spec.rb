require_relative '../lib/js_stack.rb'

describe JSStack do
  let (:stack) { JSStack.new 'A' }

  before do
    stack.push 'B'
    stack.push 'C'
  end

  it '#initialize' do
    data = stack.top.data
    expect( data ).not_to be_empty
  end

  it '#pop' do
    top = stack.pop

    expect( top ).to eq 'C'
    expect( stack.top.data ).to eq 'B'
  end

  it '#push' do
    stack.push 'D'

    expect( stack.top.data ).to eq 'D'
  end

  it '#peek' do
    expect( stack.peek ).to eq 'C'
  end

  it '#empty?' do
    expect( stack.empty? ).to be_falsey
  end
end