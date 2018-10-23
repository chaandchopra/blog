# #METOO Blog
An web app for blogging. People can share their stories with the world.
#   General Instruction
	Make changes through your own branch.
# 	Instruction regarding db
	Please follow this db config and schema so that we face lesser problem during integration.
		1. log into your root and create an user "demo" with password "demo";
		2. create a data base named "blog"
	Please initialise your local db with the mysql dump file(blog.sql) in "db_bak" folder.
		3. mysql -u demo -p blog < blog.sql;
	If you make any changes to db please upload the modified mysql dump and mention it in this readme file. 
# 	Database congiguration 
	db : mysql
	db name : blog
	username : demo
	password : demo
#  Schema Definitions
	users table in demo:
	+------------+-------------+------+-----+---------+-------+
	| Field      | Type        | Null | Key | Default | Extra |
	+------------+-------------+------+-----+---------+-------+
	| username   | varchar(8)  | NO   | PRI | NULL    |       |
	| password   | varchar(20) | YES  |     | NULL    |       |
	| first_name | varchar(20) | YES  |     | NULL    |       |
	| last_name  | varchar(20) | YES  |     | NULL    |       |
	| email      | varchar(20) | YES  |     | NULL    |       |
	+------------+-------------+------+-----+---------+-------+
	
	user_comment table in demo:
	+--------------+---------------+------+-----+---------+-------+
	| Field        | Type          | Null | Key | Default | Extra |
	+--------------+---------------+------+-----+---------+-------+
	| post_id      | varchar(9)    | YES  |     | NULL    |       |
	| name         | varchar(30)   | YES  |     | NULL    |       |
	| email        | varchar(30)   | YES  |     | NULL    |       |
	| comment      | varchar(1000) | YES  |     | NULL    |       |
	| publish_date | varchar(30)   | YES  |     | NULL    |       |
	| publish_time | varchar(30)   | YES  |     | NULL    |       |
	+--------------+---------------+------+-----+---------+-------+
	
	user_post table in demo:
	+--------------+--------------+------+-----+---------+----------------+
	| Field        | Type         | Null | Key | Default | Extra          |
	+--------------+--------------+------+-----+---------+----------------+
	| post_id      | int(11)      | NO   | PRI | NULL    | auto_increment |
	| name         | varchar(30)  | YES  |     | NULL    |                |
	| email        | varchar(30)  | YES  |     | NULL    |                |
	| phone        | char(10)     | YES  |     | NULL    |                |
	| heading      | varchar(80)  | YES  |     | NULL    |                |
	| sub_heading  | varchar(150) | YES  |     | NULL    |                |
	| post         | mediumtext   | YES  |     | NULL    |                |
	| publish_date | varchar(30)  | YES  |     | NULL    |                |
	| publish_time | varchar(30)  | YES  |     | NULL    |                |
	| theme        | varchar(20)  | YES  |     | NULL    |                |
	+--------------+--------------+------+-----+---------+----------------+

	1. users(username (pk), password, first_name, last_name, email, phone);
	2. user_posts(post_id int <auto_increment (pk)>, name, email, phone, heading, sub_heading, post, publish_date <auto_generate>, publish_time <auto_generate>);
	3. topics(topic_id int auto_increment, topic_name(pk));
	4. tags(post_id(fk->posts),topic_id
			pk=(post_id,topic_id));
