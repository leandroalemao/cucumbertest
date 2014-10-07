require 'faker' 

FactoryGirl.define do 
	factory :usuario do |f| 
		f.nome { Faker::Name.name  } 
		f.endereco { Faker::Address.street_address } 
		f.telefone { Faker::PhoneNumber.cell_phone }
		f.estado { Faker::Address.state_abbr }
		f.tipo { Faker::Internet.slug('M') } 
	end 
end