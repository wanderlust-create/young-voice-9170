require 'rails_helper'

RSpec.describe 'the professor show' do
  it "shows the students for a specific professor" do

    snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")

    harry = snape.students.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
    malfoy = snape.students.create(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )

    visit "/professors/#{snape.id}"

    expect(page).to have_content(harry.name)
    expect(page).to have_content(malfoy.name)
  end

  it "shows the average age for all students of a professor" do

    snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
    hagarid = Professor.create(name: "Rubeus Hagrid", age: 38 , specialty: "Care of Magical Creatures")
    lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

    harry = Student.create(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
    malfoy = Student.create(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )
    longbottom = Student.create(name: "Neville Longbottom" , age: 11 , house: "Gryffindor" )

    ProfessorStudent.create(student_id: harry.id, professor_id: snape.id)
    ProfessorStudent.create(student_id: harry.id, professor_id: hagarid.id)
    ProfessorStudent.create(student_id: harry.id, professor_id: lupin.id)
    ProfessorStudent.create(student_id: malfoy.id, professor_id: hagarid.id)
    ProfessorStudent.create(student_id: malfoy.id, professor_id: lupin.id)
    ProfessorStudent.create(student_id: longbottom.id, professor_id: snape.id)

    visit "/professors/#{lupin.id}"

    expect(page).to have_content(harry.name)
    expect(page).to have_content(malfoy.name)
    expect(page).to have_content("Student Average Age: 11.5")

  end
end
