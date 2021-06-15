USE Test

CREATE TABLE UserInfo
(
     Id UNIQUEIDENTIFIER   DEFAULT newid(),
	 Name varchar(100) NOT NULL,
	 Email varchar (100) NOT NULL ,
	 Password varchar (100) NOT NULL,
	 TypeTest varchar (20)
)

CREATE TABLE Tests
(
     Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT newid(),
	 Name varchar(100) NOT NULL,
	 TypeTest varchar(20),
	
)


CREATE TABLE QuestionsAndAnswers
(
    Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT newid(),
	Id_Test UNIQUEIDENTIFIER,
	Question varchar(1000),
	A_Variant varchar(500),
	B_Variant varchar(500),
	C_Variant varchar(500),
	D_Variant varchar(500),
	RightAnswer varchar(500)
	 FOREIGN KEY (Id_Test) REFERENCES Tests (Id)
)


INSERT INTO UserInfo
 (Name,Email,Password,TypeTest)
 VALUES
 ('User1','user1@gmail.com','!Qwerty1','math'),('User2','user2@gmail.com','!Qwerty2','physics'),('User3','user3@gmail.com','!Qwerty3','math'),('User4','user4@gmail.com','!Qwerty4','physics');
  
  INSERT INTO Tests
  ( Name,TypeTest)
  VALUES
  ('Interesting tasks in mathematics','math'),('Exciting tasks', 'math'), ('Density of matter','physics'),('Optical phenomena','physics' );
  GO



   INSERT INTO QuestionsAndAnswers
  (Id_Test ,Question ,A_Variant ,B_Variant ,C_Variant ,D_Variant ,RightAnswer )
  VALUES
  ('A5EECDD9-A2D1-4824-9310-9DDEA6687B0A','Three girls were preparing to dance for a concert. The three of them danced for 3 hours. How many hours did each of them dance? ',' 1 hour ',' There is no correct answer ',' 9 hours', '3 hours',' 3 hours'),
  ('A5EECDD9-A2D1-4824-9310-9DDEA6687B0A','Goats hid behind a fence and waited for the farmer to go to get to the cabbage. From behind the fence, 28 legs are visible from below, and from above - 14 horns. So how many goats behind the fence? ',' 42 goats', '14 goats',' There are no correct answers', '7 goats',' 7 goats'),
  ('A5EECDD9-A2D1-4824-9310-9DDEA6687B0A','Svetlana rested with her grandmother for 3 weeks and 4 days. How many days did Svetlana stay with her grandmother? ',' 11 days', '30 days',' There is no correct answer ',' 7 days', 'There is no correct answer'),
  ('A5EECDD9-A2D1-4824-9310-9DDEA6687B0A','Olenka cut 5 ribbons for the doll, and each new ribbon was 3 cm longer than the previous one. What was the length of the first tape if the length of the last tape was 15 cm? ',' There is no correct answer ',' 3 cm ',' 5 cm ',' 12 cm ',' 3 cm ' ),
  ('A5EECDD9-A2D1-4824-9310-9DDEA6687B0A','Yuri and Artem have a total of 26 markers. Yura wrote down and threw away 3 felt-tip pens, and gave 5 to Artem. How many felt-tip pens do Artem and Yuri have together now? ',' 44 felt-tip pens', '23 felt-tip pens',' 18 felt-tip pens', 'There is no correct answer', '23 felt-tip pens' ),
  
  ('F1DE8306-1F1D-4774-B8DB-C595A3AA7F04','In 5 boxes 40 kg of plums. How many kilograms of plums in one box? ',' 9kg ',' 8kg ',' 45kg ',' 34kg ',' 8kg ' ),
  ('F1DE8306-1F1D-4774-B8DB-C595A3AA7F04','In 4 identical bottles of 8 liters of kvass. How much kvass in one bottle? ',' 32l ',' 36l ',' 2l ',' 4l ',' 2l ' ),
  ('F1DE8306-1F1D-4774-B8DB-C595A3AA7F04','The boys made bird feeders. 5 sparrows flew to four of them, and 8 bullfinches flew to three of them. How many birds ate at the feeders? ',' 44 birds', '32 birds',' 24 birds', '13 birds',' 44 birds' ),
  ('F1DE8306-1F1D-4774-B8DB-C595A3AA7F04','Three squirrels were picking nuts. The first squirrel found 8 nuts, the second - 5, and the third - only 2. These squirrel nuts were divided equally. How many nuts did each get? ',' 4 nuts', '3 nuts',' 6 nuts', '5 nuts',' 5 nuts' ),
  ('F1DE8306-1F1D-4774-B8DB-C595A3AA7F04','The play ended at 10:50 p.m. When did it start, if it lasted 3 hours 30 minutes? ',' 6 hours 30 minutes', '7 hours 50 minutes',' 7 hours 20 minutes', '6 hours 20 minutes',' 7 hours 20 minutes' ),
 
 
  ('66A4F82D-27B2-4B45-A703-C5A3ED710B7C','A ray of light falls on a flat mirror. The angle of incidence was reduced by 5 °. How did the angle between the plane mirror and the reflected beam change? A ray of light falls on a flat mirror. The angle of incidence was reduced by 5 °. How has the angle between the plane mirror and the reflected beam changed? ',' Decreased by 5 ° ',' Decreased by 10 ° ',' Increased by 5 ° ',' Increased by 10 ° ',' Increased by 5 ° ' ),
  ('66A4F82D-27B2-4B45-A703-C5A3ED710B7C','The distance from a flat mirror to an object is 10 cm. Why is the distance from the object to its image in the mirror?', '20 cm', '30 cm', '5 cm', '10 cm', '20 cm' ),
  ('66A4F82D-27B2-4B45-A703-C5A3ED710B7C','Find the optical power of the lens if the focal length is 2 m', '1', '0.5', '0.7', '2', '0.5' ),
  ('66A4F82D-27B2-4B45-A703-C5A3ED710B7C','What will the image of the object look like if it is in double focus', 'Real and Reduced', 'Inverted and Imaginary', 'Straight and Equal in size', 'Magnified and Equal in size', 'Real and Reduced' ),
  ('66A4F82D-27B2-4B45-A703-C5A3ED710B7C','The show ended at 22:50. When did it start, if it lasted 3 hours and 30 minutes? ',' 6 hours 30 minutes', '7 hours 50 minutes', '7 hours 20 minutes',' 6 hours 20 minutes ',' 7 hours 20 minutes'),
 
 ('CC9B1F92-E914-472D-A722-3DF8CF54D03A','The stone weighs 520 kg and has a volume of 0.2 m3. What is the density of the stone? ',' 0.0004 kg / m3 ',' 104 kg / m3 ',' 2600 kg / m3 ',' 67 kg / m3 ',' 2600 kg / m3 ' ),
 ('CC9B1F92-E914-472D-A722-3DF8CF54D03A','The density of concrete is 2200 kg / m3, and brass - 8.5 g / cm3. To compare the density of substances',' Density of concrete is big ',' it is impossible to compare ',' density of brass is big ',' density is identical ',' density of brass is big ' ),
 ('CC9B1F92-E914-472D-A722-3DF8CF54D03A','The weight of the canister with kerosene is 18 kg. Find the capacity of the canister if the mass of the empty canister is 2 kg ',' 0.02 m3 ',' 25 l ',' 200 cm3; ',' 2 cm3 ',' 0,02 m3 ' ),
 ('CC9B1F92-E914-472D-A722-3DF8CF54D03A','Determine the mass of a body with a volume of 250 cm3, if the density of the substance from which it is made is 11300 kg / m3 ', '28, 25kg', '0,2825kg', '2,825 kg', '282,5 kg' , '2825 kg' ),
 ('CC9B1F92-E914-472D-A722-3DF8CF54D03A','The density of silver is 10.5 g / cm3, the volume of the silver ring is 0.5 cm3. Determine its mass', '0.05 kg', '5.25 kg', '210 kg', '5.25 g', '5.25 g');
  GO


  alter table Tests
  add  [Description] varchar(1000)

  Update  Tests 
  set [Description] = 'Put your math knowledge to the test with this fun math quiz for kids.'
  where [Name] ='Interesting tasks in mathematics' 

   Update  Tests 
  set [Description] = 'Find a wide range of questions & answers related to addition, multiplication, subtraction, division, geometry, numbers and general math knowledge.'
  where [Name] ='Exciting tasks' 

   Update  Tests 
  set [Description] = 'Light has the most interesting phenomena among physics concepts. We designed the light phenomena conceptual assessment.'
  where [Name] ='Density of matter' 

   Update  Tests 
  set [Description] = 'This is a collection of 5 physics test questions with answers dealing with the density of matter.'
  where [Name] ='Optical phenomena' 



select* from UserInfo
select* from Tests
select* from QuestionsAndAnswers

a5eecdd9-a2d1-4824-9310-9ddea6687b0a	Interesting tasks in mathematics
d86670b7-7cf5-4183-9802-b435bcd56410	Density of matter
f1de8306-1f1d-4774-b8db-c595a3aa7f04	Exciting tasks
66a4f82d-27b2-4b45-a703-c5a3ed710b7c	Optical phenomena


a5eecdd9-a2d1-4824-9310-9ddea6687b0a	Interesting tasks in mathematics	math
d86670b7-7cf5-4183-9802-b435bcd56410	Density of matter	              physics
f1de8306-1f1d-4774-b8db-c595a3aa7f04	Exciting tasks	                        math
66a4f82d-27b2-4b45-a703-c5a3ed710b7c	Optical phenomena	                     physics
NULL	NULL	NULL