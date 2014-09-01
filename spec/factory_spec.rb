require 'spec_helper'
require_relative '../lib/factory'

describe "Factory Pattern" do 
	
	it "is a party of warriors" do 
		party = Party.new(HeroFactory.new)
		party.add_warriors(3)
		expect(party.members.count { |member| member.class == Warrior}).to eq(3)
	end

	it "is a party of mages" do 
		party = Party.new(HeroFactory.new)
		party.add_mages(3)
		expect(party.members.count { |member| member.class == Mage}).to eq(3)
	end

end