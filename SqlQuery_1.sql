CREATE TABLE users
(
	userid INT NOT NULL primary key,
	username NVARCHAR(15) NOT NULL,
	password NVARCHAR(15) NOT NULL,
		CONSTRAINT users_username_uk UNIQUE (username)
)

CREATE TABLE userinfo
(
	userid INT NOT NULL PRIMARY KEY,
	username NVARCHAR(15) NOT NULL,
	first_name NVARCHAR(15) NOT NULL,
	last_name NVARCHAR(15) NOT NULL,
	email NVARCHAR(40) NOT NULL,
		CONSTRAINT userinfo_userid_fk FOREIGN KEY (userid)
			REFERENCES users.userid,
		CONSTRAINT userinfo_username_fk FOREIGN KEY (username)
			REFERENCES users.username,
		CONSTRAINT userinfo_email_uk UNIQUE (email)
)

CREATE TABLE moodvalues
(
	userid INT NOT NULL,
	date DATE NOT NULL PRIMARY KEY DEFAULT SYSDATE,
	sleepHours INT,
	depressed NVARCHAR(10),
	elevated NVARCHAR(10),
	irritability NVARCHAR(10),
	anxiety NVARCHAR(10),
	psychotic NVARCHAR(3),
	talkTherapy NVARCHAR(3),
	suicidalIdeation NVARCHAR(3),
		CONSTRAINT moodvalues_userid_fk FOREIGN KEY (userid)
			REFERENCES users.userid,
		CONSTRAINT moodvalues_sleepHours_ck CHECK (sleepHours >=0 AND sleepHours <=24)
)