require 'rails_helper'

describe Usuario do 

	it "has a valid factory" do 
		expect(FactoryGirl.build(:usuario)).to be_valid
	end
	it "is invalid without a name" do
		contact = FactoryGirl.build(:usuario, nome: nil)
		expect(contact).to have(1).errors_on(:nome)
	end

end