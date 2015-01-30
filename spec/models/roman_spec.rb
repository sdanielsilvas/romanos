require 'rails_helper'
require "./app/models/roman"

describe Roman do
	roman=Roman.new
	it "convierte el 1" do
		expect(roman.convertir(1)).to eq("I")
	end	
	it "convierte el 5" do
		expect(roman.convertir(5)).to eq("V")
	end	
	it "convierte el 11" do
		expect(roman.convertir(11)).to eq("XI")
	end
	it "convierte el 12" do
		expect(roman.convertir(12)).to eq("XII")
	end
	it "convierte el 99" do
		expect(roman.convertir(99)).to eq("XCIX")
	end
	it "convierte el 90" do
		expect(roman.convertir(90)).to eq("XC")
	end
	it "convierte el 1000" do
		expect(roman.convertir(1000)).to eq("M")
	end
	it "convierte el 100" do
		expect(roman.convertir(100)).to eq("C")
	end
	it "convierte el 101" do
		expect(roman.convertir(101)).to eq("CI")
	end
	it "convierte el 153" do
		expect(roman.convertir(153)).to eq("CLIII")
	end
	it "convierte el 999" do
		expect(roman.convertir(999)).to eq("CMXCIX")
	end
	it "convierte el 674" do
		expect(roman.convertir(674)).to eq("DCLXXIV")
	end
	it "tamaño el numero 123" do
		expect(roman.size(123)).to eq(3)
	end	
	it "tamaño el numero 1000" do
		expect(roman.size(1000)).to eq(4)
	end	
	it "tamaño el numero 1000" do
		expect(roman.size(1000)).to eq(4)
	end	
	it "index inmvertido el numero 1" do
		expect(roman.index(1,1)).to eq(0)
	end	
	it "index invertido el numero 2 en 12" do
		expect(roman.index(12,2)).to eq(0)
	end	
	it "index invertido el numero 1 en 123" do
		expect(roman.index(123,1)).to eq(2)
	end	

end
