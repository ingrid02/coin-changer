require_relative '../lib/changer.rb'
require 'changer'

describe Changer do
    let(:changer) {Changer.new}
    it "has a change method" do
        expect(changer.respond_to?(:make_change)).to eq(true)
    end
    it "should make change for 1 cent" do
        expect(changer.make_change(1)).to eq([1])
    end

    it "should make change for 2 cent" do
        expect(changer.make_change(2)).to eq([1, 1])
    end
    it "should make change for 26 cent" do
        expect(changer.make_change(26)).to eq([25, 1])
    end
    it "should make change for 37 cent" do
        expect(changer.make_change(37)).to eq([25, 10, 1, 1])
    end
end