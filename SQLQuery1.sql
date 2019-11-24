drop table projects;
drop table tools ;

create table tools (
tl_ID tinyint  CONSTRAINT tool_pk PRIMARY KEY,
tl_name char(30) Not Null,
tl_iconlink varchar(1000) Not Null
)

create table projects (
pr_ID smallint CONSTRAINT project_pk PRIMARY KEY,
pr_name Nchar(100) Not Null, 
pr_desc varchar(max), 
pr_link varchar(1000) Not Null,
pr_toolID tinyint Not Null FOREIGN KEY REFERENCES tools(tl_ID),
pr_catname char(20) Not Null
)

Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 1 ,'Python (Keras)' ,'https://img.icons8.com/dusk/64/000000/python.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 2 ,'Python (tflearn)' ,'https://img.icons8.com/dusk/64/000000/python.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 3 ,'Python (opencv)' ,'https://img.icons8.com/dusk/64/000000/python.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 4 ,'Python (numpy ,matplotlib)' ,'https://img.icons8.com/dusk/64/000000/python.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 5 ,'C#' ,'https://img.icons8.com/dusk/64/000000/cs.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 6 ,'javascript' ,'https://img.icons8.com/color/48/000000/javascript.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 7 ,'Octave' ,'https://img.icons8.com/nolan/64/000000/matlab.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 8 ,'Unity' ,'https://img.icons8.com/ios-filled/50/000000/unity.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 9 ,'C++' ,'https://img.icons8.com/dusk/64/000000/c-plus-plus.png' );
Insert into tools (tl_Id, tl_name,tl_iconlink) 
values ( 10 ,'C' ,'https://img.icons8.com/dusk/64/000000/c.png' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 0 , 'Text Based Emotion Recognition in Arabic Text (Graduation Project)',
	'A project that classifies the emotion found in Arabic text (ex: happy, sad, ...) using a  CNN andtwo different embedding methods',
	'https://github.com/HayaLababidi/GP_ArabicTextEmotionRecognition', 1 , 'Machine learning' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 1 , 'Facial Similarity Recognition ”حلقة وصل”',
	'A project that Helps the userfind their lost relatives or friends using a facenet model ,tries to draw a picture based on hand drawn sketches using a pix2pix model',
	'https://github.com/Maioy97/FaceSimilarityRecognition_CVSC2019', 1 , 'Machine learning' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 2 , 'Indoor Scene Classification',
	'A project that classifies an image of an indoor scene into one of ten categories ex(airport hall , kitchen .. )',
	'https://colab.research.google.com/drive/1o-it8UbW0pJDwYlp_arK2_kTJBYtEA8G', 2 , 'Machine learning' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 3 , 'Gender and Facial Expression Detection',
	'A project that detects a face then classifies it as male/ female and facial expression (ex: happy, sad, ...) using SVM classifiers and computer vision concepts',
	'https://github.com/Maioy97/facial-emotion-recogntion-', 3 , 'Machine learning' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 4 , 'Multiple Neural Network Models',
	'a few neural network models made without the help of a machine learning library, made to help learn the core principles of a neural network',
	'https://github.com/Maioy97/neuralnetworks-tasks', 4 , 'Machine learning' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 5 , 'Tiny language compiler',
	'a scanner and parser for the Tiny programming language',
	'https://github.com/HayaLababidi/Tiny_Compiler', 5 , 'PC application' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 6 , 'Small Web Server',
	'A server containing webpages that handles HTTP get requests and responds with the needed page / message',
	'https://github.com/Maioy97/networkcourse_server', 5 , 'Web' );

	Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 7 , 'Queue Simulation system ',
	'an app that simulates serving customers in multiple queues',
	'https://github.com/Maioy97/systemsimulation', 5 , 'PC application' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 8 , 'Tanks Algo',
	'A game that challenges the player’s knowledge in programming and related areas by asking questions and playing some fun mini games',
	'https://github.com/Open-Source-Community/TanksAlgo', 6 , 'Web' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 9 , 'Super Mario Replica',
	'A replica of the classic super Mario bros game using oop concepts',
	'none', 8 , 'Game' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 10 , 'Image Encryption and Compression',
	'A tool that encrypts-decrypts, compresses-decompresses images',
	'none', 5 , 'PC application' );

Insert into projects (pr_ID ,pr_name ,pr_desc ,pr_link ,pr_toolID ,pr_catname ) 
values ( 11 , 'console operating system',
	'a small operating system ',
	'none', 10 , 'OS' );