require 'rails_helper'

RSpec.describe 'the professor show' do
  it "shows the students for a specific professor" do

    snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")

    harry = snape.students.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
    malfoy = snape.students.create(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )

    # require "pry"; binding.pry
    visit "/professors/#{snape.id}"

    expect(page).to have_content(harry.name)
    expect(page).to have_content(malfoy.name)

  end
end
