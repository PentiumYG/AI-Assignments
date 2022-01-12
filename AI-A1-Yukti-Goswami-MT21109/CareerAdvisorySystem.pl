listAI :- printlist(['1. Artificial Intelligence Research(air)', '2. Software Engineering(se)', '3. Natural Language Processing(nlp)', '4. User Experience(ue)', '5. Data Analytics(da)']).

listSE :-printlist(['1. Technical ability', '2. Problem solving', '3. Numeracy', '4. Creativity', '5. IT']).

listNLP :- printlist(['1. Programming', '2. Probability and Statistics', '3. Linear Algebra', '4. Algorithm Design and Analysis']).

listUE :- printlist(['1. UX research', '2. Collaboration', '3. Wireframing and UI prototyping', '4. UX writing', '5. Visual communication', '6. User empathy', '7. Interaction design', '8. Coding']).

listDA :- printlist(['1. Statistical analysis', '2. Machine learning', '3. Computer science', '4. Programming', '5. Data storytelling', '6. Business intuition', '7. Analytical thinking', '8. Critical thinking', '9. Inquisitiveness', '10. Interpersonal skills']).

listAIR :- printlist(['1. Various level of math, including probability, statistics, algebra, calculus, logic and algorithms','2. Bayesian networking or graphical modeling, including neural nets', '3. Physics, engineering and robotics', '4. Programming languages and coding', '5. Cognitive science theory']).

listDEElectives :- printlist(['1. Data Mining', '2. Database System Implementation', '3. Information Retrieval', '4. Big Data Analytics', '5. Introduction to spatial Computing', '6. Statistical Machine Learning', '7. Machine Learning', '8. Natural Language Processing', '9. GPU Computing', '10. Probabilistic Graphical Models', '11. Data Warehousing', '12. Cloud Computing and Virtualization', '13. Collaborative Filtering', '14. Privacy in Location-based Services', '15. Semantic Web', '16. Web Intelligence and Big Data Analytics', '17. Business Intelligence and Data Warehousing', '18. Financial Data Analytics', '19. Information Integration and Data Analytics', '20. Distributed Data Mining', '21. Database Methods in Information Retrieval', '22. Mining Large Networks']).

listIS :- printlist(['1. Security Architect(sa)','2. Security Consultant(sc)', '3. Penetration Tester(pt)', '4. Chief Information Security Officer(ciso)', '5. Cryptographer(c)', '6. Security Analyst(san)', '7. Security Engineer(sece)']).

listMC :- printlist(['1. Distributed Systems Security', '2. Mobile Computing', '3. Embedded Systems', '4. Ad Hoc Wireless Networks', '5. Cellular Data Networks', '6. Network Security', '7. Introduction to Spatial Computing', '8. Smart Sensing for Internet of Things', '9. Programming Cloud Services for Mobile Applications', '10. Mobile and Cellular Network Security', '11. Advanced Topics in Mobile Computing', '12. Network Anonymity and Privacy']).

printlist([A|List]) :-
    write(A), nl,
    printlist(List).

printlist([]).

answer(yes) :- interest(ai).
answer(no).

ans(yes) :- availableFields(cse).
ans(no).

answ(yes) :- interest(is).
answ(no).


begin :- 
	write('Welcome to the Career Advisory System'), nl,
	write('Note! This system provides advice for CSE Students mainly and generates results after analysing the inputs given from the user.'), nl, nl,
	write('What is your name? (NOTE!! Please write in lower case or single quotes(\'\') only.)'), nl,
	read(N),
	write('Hello '),
    write('*'),
	write(N),
    write('*'), nl,
 	stream.

stream :-
	nl,
	write('Please choose your background stream:'), nl,
	write('->cse'), nl,
	write('->ece'), nl,
	write('->cb'), nl,
	read(S),
	write('stream: '),
	write(S), nl,
	availableFields(S).
	

availableFields(cse) :- 
	nl,
	write('Mention the field in which you wish to form your career from the options given below: '), nl,
	write('1. Artificial Intelligence (write: \'ai\')'), nl,
	write('2. Data Engineering (write: \'de\')'), nl,
	write('3. Information Security (write: \'is\')'), nl,
	write('4. Mobile Computing (write: \'mc\')'), nl,
	write('NOTE!! To choose the option, write as specified in brackets corresponding to each choice.'), nl,
	read(X),
	write('The specialization you have chosen is: '),
	write(X), nl,
	interest(X).

availableFields(ece) :-
	nl,
	write('For ece below mentioned are various specializations that you can choose according to your interest:'), nl,
	write('1. Communication and Signal Processing'), nl,
	write('2. VLSI & Embedded Systems'), nl,
	write('3. Cyber-Physical Systems'), nl,
	write('4. Machine Learning'), nl.

availableFields(cb) :-
    nl,
    write('For computational biology you can refer to these subjects:'), nl,
    write('1. Foundations of Modern Biology'), nl,
    write('2. Algorithms in Computational Biology'), nl,
    write('3. Cell Biology and Biochemistry'), nl,
    write('4. Introduction to Mathematical Biology'), nl.
	
interest(ai) :- 
	nl,
	write('Careers that you can pursue in Artificial Intelligence:'), nl,
	listAI, nl, nl,
	write('Choose your interest:'), nl,
	read(C),
	field(C).

interest(is) :- 
	nl,
	write('Careers that you can pursue in Information Security:'), nl,
	listIS, nl, nl,
	write('Choose your interest:'), nl,
	read(M),
	field(M).

interest(de) :- 
	nl,
	write('To become a Data Engineer, you can choose some following courses depending upon your interest:'), nl,
	listDEElectives, nl,
	write('Would you like to choose another field of career in CSE? (Type: \'yes\' or \'no\') :'), nl,
	read(I), 
	ans(I).

interest(mc) :-
    nl,
    write('To do mobile computing, you can choose some following courses depending upon your interest:'), nl,
    listMC, nl,
    write('Would you like to choose another field of career in CSE? (Type: \'yes\' or \'no\') :'), nl,
    read(I),
    ans(I).


field(air) :- 
	nl,
	write('Basic computer technology and math backgrounds form the backbone of most artificial intelligence. This coursework involves study of:'), nl,
	listAIR, nl,
	write('Would you like to choose another field of AI again? (Type: \'yes\' or \'no\') :'), nl,
	read(Ans), 
	answer(Ans).
	

field(se) :- 
	nl,
	write('Software developers – sometimes called programmers – design, build and test computer programmes. You may work on information databases, programmes that control robotic systems, or cloud and mobile applications. You may write computer programmes from scratch or amend existing \'off-the-shelf\' programmes to meet the needs of the project. Therefore Software Engineering requires:'), nl,
	listSE, nl,
	write('Would you like to choose another field of AI again? (Type: \'yes\' or \'no\') :'), nl,
	read(Ans), 
	answer(Ans).
	

field(nlp) :-
	nl,
	write('To opt for NLP as your career you should have knowledge of:'), nl,
	listNLP, nl,
	write('Would you like to choose another field of AI again? (Type: \'yes\' or \'no\') :'), nl,
	read(Ans), 
	answer(Ans).

field(ue) :-
	nl,
	write('To become a UX specialist you should have knowledge of:'), nl,
	listUE, nl,
	write('Would you like to choose another field of AI again? (Type: \'yes\' or \'no\') :'), nl,
	read(Ans), 
	answer(Ans).

field(da) :-
	nl,
	write('Data scientists play a key role in helping organizations make sound decisions. As such, they need \'soft skills\' in the following areas:'), nl,
	listDA, nl, 
	write('Would you like to choose another field of AI again? (Type: \'yes\' or \'no\') :'), nl,
	read(Ans), 
	answer(Ans).

field(sa) :-
	nl,
	write('The Security Architect takes care of planning, implementing, and testing security systems. They are responsible for protecting the data from hackers, malware, and DDoS attacks. Since this is a senior-level position, adequate training with certification will be expected. The job of the security architect is to protect the network using proper firewalls.'), nl,
	nl, 
	write('Would you like to choose another field of IS again? (Type: \'yes\' or \'no\') :'), nl,
	read(N), 
	answ(N).

field(sc) :-
	nl,
	write('The Security Consultant is a flexible and tech-savvy person who protects the organizations data and capital. They understand and analyze various security systems in all fields. The Security Consultant determines the different tests, like vulnerability, to protect the computer, network, and data. They are also capable of providing technical guidance when required.'), nl,
	nl, 
	write('Would you like to choose another field of IS again? (Type: \'yes\' or \'no\') :'), nl,
	read(N), 
	answ(N).

field(pt) :-
	nl,
	write('A Penetration Tester finds the weaknesses and loopholes in the system that hackers can use. They are also called Ethical Hackers. They have a range of tools to test the network, web application, or product. They also document the research and findings to be helpful in the future.'), nl, nl, 
	write('Would you like to choose another field of IS again? (Type: \'yes\' or \'no\') :'), nl,
	read(N), 
	answ(N).

field(ciso) :-
	nl,
	write('This is an advanced-level job for which you will be required to handle a Security Officers team. You have the power to create your own security measure. You will also be required to collaborate with other stakeholders in determining the security of the system since this is an advanced role. There is an absolute necessity for proper training and certification.'), nl,
	nl, 
	write('Would you like to choose another field of IS again? (Type: \'yes\' or \'no\') :'), nl,
	read(N), 
	answ(N).

field(c) :-
	nl,
	write('Cryptographers are security system professionals who are responsible for writing a code that hackers can’t crack. It is a mid-senior-level job that you will enjoy if you love coding.'), nl,
	nl, 
	write('Would you like to choose another field of IS again? (Type: \'yes\' or \'no\') :'), nl,
	read(N), 
	answ(N).

field(san) :-
	nl,
	write('As a Security Analyst, you will be required to plan and execute various security measures. You analyze and document the security of the system and find the areas that are prone to attacks. This is an entry-level job if you aspire to become a cybersecurity professional.'), nl,
	nl, 
	write('Would you like to choose another field of IS again? (Type: \'yes\' or \'no\') :'), nl,
	read(N), 
	answ(N).


field(sece) :-
	nl,
	write('A Security Engineer is responsible for rebuilding the security system for the organization. They build the necessary arrangements to safeguard the system. This is an entry-level job if you aspire to become a cybersecurity professional.'), nl,
	nl, 
	write('Would you like to choose another field of IS again? (Type: \'yes\' or \'no\') :'), nl,
	read(N), 
	answ(N).


 

