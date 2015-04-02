#1. Show all tables: 	
	apartmentlab=  \dt
           List of relations
 Schema |    Name    | Type  |  Owner  
--------+------------+-------+---------
 public | owners     | table | Jessica
 public | properties | table | Jessica
(2 rows)


#2. Show all users:
	apartmentlab=  \du
                             List of roles
 Role name |                   Attributes                   | Member of 
-----------+------------------------------------------------+-----------
 Jessica   | Superuser, Create role, Create DB, Replication | {}

#3. Show all data in the owners table: 
	apartmentlab=  SELECT * FROM owners;
 id | name | age 
----+------+-----
(0 rows)

#4. Show the name of the owners:
	apartmentlab= SELECT name FROM owners;
 name 
------
(0 rows)

#5. Show the ages of the owners
	apartmentlab= SELECT age FROM owners;
 age 
-----
(0 rows)

#6.  Show the name of an owner whose name is Donald.
	apartmentlab= SELECT name FROM owners WHERE name = 'Donald';
 name 
------
(0 rows)

#7. Show the age of all owners who are older than 30.
	apartmentlab= SELECT age FROM owners WHERE age = 30;
 age 
-----
(0 rows)

#8. Show the name of all owners whose name starts with an E.
	apartmentlab= SELECT * FROM owners WHERE name LIKE 'E%';
 id | name | age 
----+------+-----
(0 rows)


#9. Add an owner named John who is 33 years old to the owners table.
	apartmentlab= INSERT INTO owners (name, age) VALUES ('John', 33);
INSERT 0 1


#10. Add an owner named Jane who is 43 years old to the owners table.	
	apartmentlab= INSERT INTO owners (name, age) VALUES ('Jane', 43);
INSERT 0 1

#11. Change Jane's age to 30.
	apartmentlab= UPDATE owners SET age=30 WHERE name = 'Jane';
UPDATE 1

#12. Change Jane's name to Janet.
	apartmentlab= UPDATE owners SET name='Janet' WHERE name = 'Jane';
UPDATE 1

#13. Add a property named Archstone that has 20 units.
	apartmentlab= INSERT INTO properties (name, units, owner_id) Values ('Archstone', 20, 1);
INSERT 0 1

#14. Delete the owner named Jane. 
	apartmentlab= DELETE from owners WHERE name = 'Janet';
DELETE 1

#15. Show all of the properties in alphabetical order that are not named Archstone and do not have an id of 3 or 5. 
	apartmentlab= SELECT name, owner_id FROM properties ORDER BY name, owner_id;
   name    | owner_id 
-----------+----------
 Archstone |        1
(1 row)



#16. Count the total number of rows in the properties table.
	apartmentlab= SELECT COUNT (properties) FROM properties;
 count 
-------
     1
(1 row)

#17. Show the highest age of all owners.
	apartmentlab= SELECT MAX(age) AS Highest FROM owners;
 highest 
---------
      33
(1 row)

#18. Show the names of the first three owners in your owners table.
	apartmentlab= SELECT name FROM owners WHERE id = 1 OR id = 2 or id = 3;
 name 
------
 John
(1 row)

#19. Create a foreign key that references the owner_id in the owners table and forces the constraint ON DELETE NO ACTION.
	apartmentlab= ALTER TABLE properties ADD CONSTRAINT owner_fk FOREIGN KEY (id) REFERENCES owners (id) ON DELETE NO ACTION; 
ALTER TABLE

#20. Show all of the owners and the names of the properties they own.
	apartmentlab= SELECT owners.name, properties.name FROM owners JOIN properties ON owners.id = properties.id;
 name |   name    
------+-----------
 John | Archstone
(1 row)

	

	



