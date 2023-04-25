-- create a table
CREATE TABLE user (
  user_id INTEGER PRIMARY KEY,
  username TEXT NOT NULL
 
);
-- insert some values1 John Doe

INSERT INTO user VALUES (1, 'John Doe');
INSERT INTO user VALUES (2, 'Jane Don');
INSERT INTO user VALUES (3, 'Alice Jones');
INSERT INTO user VALUES (4, 'Lisa Romero');

-- create a table
CREATE TABLE Training_details (
user_training_id INTEGER PRIMARY KEY,
  user_id INTEGER ,
  training_id INTEGER,
  training_date TEXT NOT NULL
 
);
INSERT INTO Training_details VALUES (1, 1, 1, "2015-08-02");
INSERT INTO Training_details VALUES (2, 2 ,1 ,"2015-08-03");
INSERT INTO Training_details VALUES (3 ,3 ,2 ,"2015-08-02");
INSERT INTO Training_details VALUES (4 ,4, 2, "2015-08-04");
INSERT INTO Training_details VALUES (5 ,2 ,2 ,"2015-08-03");
INSERT INTO Training_details VALUES (6 ,1, 1, "2015-08-02");
INSERT INTO Training_details VALUES (7 ,3 ,2 ,"2015-08-04");
INSERT INTO Training_details VALUES (8 ,4, 3, "2015-08-03");
INSERT INTO Training_details VALUES (9 ,1 ,4 ,"2015-08-03");
INSERT INTO Training_details VALUES (10 ,3, 1, "2015-08-02");
INSERT INTO Training_details VALUES (11, 4, 2, "2015-08-04");
INSERT INTO Training_details VALUES (12 ,3 ,2 ,"2015-08-02");
INSERT INTO Training_details VALUES (13 ,1 ,1, "2015-08-02");
INSERT INTO Training_details VALUES (14, 4, 3, "2015-08-03");
-- fetch some values
SELECT u.*,td.training_id,td.training_date ,count(training_id) as count  FROM Training_details td ,user u 
 where u.user_id=td.user_id
 group by td.user_id,td.training_id,training_date
 having count >1
 order by td.training_date desc;


















