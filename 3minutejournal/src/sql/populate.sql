 
INSERT INTO credentials(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);
INSERT INTO credentials(username,password,enabled) VALUES ('bek','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', TRUE);  
  
INSERT INTO authority (username, authority) VALUES ('guest', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO authority (username, authority) VALUES ('admin', 'ROLE_USER');
INSERT INTO authority (username, authority) VALUES ('bek', 'ROLE_USER');

INSERT INTO feeling (feeling) VALUES ('Happy');
INSERT INTO feeling (feeling) VALUES ('Sad');
INSERT INTO feeling (feeling) VALUES ('Angry');
INSERT INTO feeling (feeling) VALUES ('Satisfied');
INSERT INTO feeling (feeling) VALUES ('Encouraged');
INSERT INTO feeling (feeling) VALUES ('Discouraged');
INSERT INTO feeling (feeling) VALUES ('Energized');
INSERT INTO feeling (feeling) VALUES ('Resigned');
INSERT INTO feeling (feeling) VALUES ('Reassured');
INSERT INTO feeling (feeling) VALUES ('Frustrated');
INSERT INTO feeling (feeling) VALUES ('Other');

INSERT INTO duration (duration) VALUES ('Minutes');
INSERT INTO duration (duration) VALUES ('Not very long');
INSERT INTO duration (duration) VALUES ('A while, but it will fade');
INSERT INTO duration (duration) VALUES ('A long time');
INSERT INTO duration (duration) VALUES ('A life time');

INSERT INTO type (type) VALUES ('An accomplishment');
INSERT INTO type (type) VALUES ('A mistake');
INSERT INTO type (type) VALUES ('A setback');
INSERT INTO type (type) VALUES ('An assessment');
INSERT INTO type (type) VALUES ('A gripe');
INSERT INTO type (type) VALUES ('Grateful for');
INSERT INTO type (type) VALUES ('Other');

INSERT INTO frequency (frequency) VALUES ('Commonplace');
INSERT INTO frequency (frequency) VALUES ('Occasional');
INSERT INTO frequency (frequency) VALUES ('Rare');
INSERT INTO frequency (frequency) VALUES ('Never happened before');


 
INSERT INTO  `MEMBER` (firstname, lastname,age,title,membernumber, member_id) VALUES ('Curious','George',12,'Boy Monkey', 8754,'admin');
INSERT INTO `MEMBER` (firstname, lastname,age,title,membernumber,member_id) VALUES ('Allen','Rench',123,'Torque Master', 8733,'guest');
 
INSERT INTO  `REGISTER` (firstname, lastname,email,register_id) VALUES ('Curious','George','yared@gmail.com', 'admin');
INSERT INTO  `REGISTER` (firstname, lastname,email,register_id) VALUES ('Allen','Rench','mustefa@gmail.com','guest');
INSERT INTO  `REGISTER` (firstname, lastname,email,register_id) VALUES ('Argynbyek','Sheken','arginbek@gmail.com','bek');					

INSERT INTO feedback(subject,message,userName) VALUES ('Interesting site','please keep it up, its good','admin');
INSERT INTO feedback(subject,message,userName) VALUES ('Need a ride','I need a ride to home','guest');	

INSERT INTO `blogpost` (`id`, `Date`, `DESCRIPTION`, `TITLE`) VALUES ('1', CURRENT_DATE(), 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?');
INSERT INTO `blogpost` (`id`, `Date`, `DESCRIPTION`, `TITLE`) VALUES ('2', CURRENT_DATE(), 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. ', 'Where can I get some?');
				