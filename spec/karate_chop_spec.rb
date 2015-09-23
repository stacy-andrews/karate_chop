require 'spec_helper'
require 'karate_chop'

RSpec.describe KarateChop do
  it "index of via chop" do
    expect(KarateChop.chop(3, [])).to eq(-1)
    expect(KarateChop.chop(3, [1])).to eq(-1)
    expect(KarateChop.chop(1, [1])).to eq(0)

    expect(KarateChop.chop(1, [1, 3, 5])).to eq(0)
    expect(KarateChop.chop(3, [1, 3, 5])).to eq(1)
    # expect(KarateChop.chop(5, [1, 3, 5])).to eq(2)
    # expect(KarateChop.chop(0, [1, 3, 5])).to eq(-1)
    # expect(KarateChop.chop(2, [1, 3, 5])).to eq(-1)
    # expect(KarateChop.chop(4, [1, 3, 5])).to eq(-1)
    # expect(KarateChop.chop(6, [1, 3, 5])).to eq(-1)
    # #
    # expect(KarateChop.chop(1, [1, 3, 5, 7])).to eq(0)
    # expect(KarateChop.chop(3, [1, 3, 5, 7])).to eq(1)
    # expect(KarateChop.chop(5, [1, 3, 5, 7])).to eq(2)
    # expect(KarateChop.chop(7, [1, 3, 5, 7])).to eq(3)
    # expect(KarateChop.chop(0, [1, 3, 5, 7])).to eq(-1)
    # expect(KarateChop.chop(2, [1, 3, 5, 7])).to eq(-1)
    # expect(KarateChop.chop(4, [1, 3, 5, 7])).to eq(-1)
    # expect(KarateChop.chop(6, [1, 3, 5, 7])).to eq(-1)
    # expect(KarateChop.chop(8, [1, 3, 5, 7])).to eq(-1)
  end

  it "sum to X" do
    expect(KarateChop.sum(5)).to eq(5+4+3+2+1)
  end

  it 'finds a minimum' do
    expect(KarateChop.min([2, 4, 5], 3)).to eq(2);

    expect(KarateChop.min([5, 4, 2], 3)).to eq(2);

  end
end