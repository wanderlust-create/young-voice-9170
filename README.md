### Tamara's reflection
I was nervous before starting because it feels like this mod has hit me ‘like a mac truck’. I spent a lot of time reviewing the content before I started the IC. 

Holy cows, for me, this IC was a much better experience than the last mod. I feel like it was straightforward and I had the skills to walk my way through the error codes and add the code I needed. In the end, I could not figure out how to call the average student age from the model and ended up just writing it in the controller. So that is something I will focus on while working on the Adopt project. 

I felt super happy in the end. Looking forward to feedback. I realised that I missed the extensions (just now coming back) and feel like I probably could have done them. 

Cheerio! :0)



# Hogwarts Again

## Setup instructions:
  - Fork this repo
  - `git clone <repo>`
  - `cd <repo_name>`
  - `bundle install`
  - `rails db:{create,migrate,seed}`

When you run rspec, you should have 12 failing tests to start.  

###  Overview

We will be creating an application to track Professors and Students at the Hogwarts School of Witchcraft and Wizardry from the Harry Potter book series (you do not need any knowledge of Harry Potter to complete this challenge). 

 
### User Stories
 
```
User Story 1 of 4
As a visitor,
When I visit '/professors',
I see a list of professors with the following information:
-Name
-Age
-Specialty
(e.g. "Name: Minerva McGonagall, Age: 204, Specialty: Transfiguration")
```
```
User Story 2 of 4
As a visitor,
When I visit '/professors/:id'
I see a list of the names of the students the professors have.
(e.g. "Neville Longbottom"
     "Hermione Granger"
     "Luna Lovegood")
```
```
User Story 3 of 4
As a visitor,
When I visit '/students'
I see a list of students and the number of professors each student has.
(e.g. "Draco Malfoy: 5"
     "Nymphadora Tonks: 10")
```
```
User Story 4 of 4
As a visitor,
When I visit '/professors/:id'
I see the average age of all students for that professor.
(e.g. "Average Age: 14.5")
```
---
### Extension
```
User Story Extension
On all index pages, all information is listed alphabetically.
	

