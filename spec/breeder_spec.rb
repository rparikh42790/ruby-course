require_relative 'spec_helper.rb'

describe PuppyBreeder::Breeder do

  describe '.initialize' do

    it "creates a new breeder class" do

      breeder1 = PuppyBreeder::Breeder.new("Ravi")
    
      expect(breeder1.name).to eq("Ravi")
      

    end

    it "it makes a puppy be fore sale" do

    breeder1 = PuppyBreeder::Breeder.new("Ravi")
    pupp1 = PuppyBreeder::Puppy.new("Lucy", 23, "pitbull")
    breeder1.for_sale(pupp1)

    expect(breeder1.breed_types["pitbull"][:list][0].name).to eq ("Lucy")
    expect(breeder1.breed_types["pitbull"][:list][0].age).to eq (23)
    expect(breeder1.breed_types["pitbull"][:list][0].breed).to eq ("pitbull")

    end



  end

end
