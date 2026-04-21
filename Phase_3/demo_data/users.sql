USE team15_database;

-- users
INSERT INTO StaffUser (username, password_plaintext, first_name, last_name) VALUES 
('owner', 'owner', 'O', 'Owner'),
('user01', 'pass01', 'Kattie', 'Toyama'),
('user02', 'pass02', 'Angella', 'Royster'),
('user03', 'pass03', 'Roselle', 'Drymon'),
('user04', 'pass04', 'Karan', 'Scipione'),
('user05', 'pass05', 'Daniela', 'Hellickson'),
('user06', 'pass06', 'Chanel', 'Tomasulo'),
('user07', 'pass07', 'Vincenza', 'Neither'),
('user08', 'pass08', 'Dalene', 'Stockham'),
('user09', 'pass09', 'Benedict', 'Karpin'),
('user10', 'pass10', 'Devorah', 'Gillian'),
('user11', 'pass11', 'Gearldine', 'Vanausdal'),
('user12', 'pass12', 'Cyril', 'Fern'),
('user13', 'pass13', 'Cheryl', 'Papasergi'),
('user14', 'pass14', 'Helaine', 'Grenet'),
('user15', 'pass15', 'Fabiola', 'Chickering'),
('user16', 'pass16', 'Fernanda', 'Paprocki'),
('user17', 'pass17', 'Cristy', 'Marrier'),
('user18', 'pass18', 'Lisha', 'Turinetti'),
('user19', 'pass19', 'Wilda', 'Tromblay'),
('user20', 'pass20', 'Krissy', 'Harnos'),
('user21', 'pass21', 'Simona', 'Angalich'),
('user22', 'pass22', 'Nieves', 'Klang'),
('user23', 'pass23', 'Colette', 'Bevelacqua'),
('user24', 'pass24', 'Mona', 'Keneipp'),
('user25', 'pass25', 'Wynell', 'Buzick');

INSERT INTO AcquisitionSpecialist (username) VALUES
('user02'), ('user04'), ('user05'), ('user08'), ('user10'), ('user12'), ('user13'), 
('user16'), ('user18'), ('user19'), ('user22'), ('user23'), ('user25'), ('owner');

INSERT INTO SalesAgent (username) VALUES
('user03'), ('user06'), ('user07'), ('user11'), ('user14'), ('user15'), ('user20'), 
('user21'), ('user24'), ('owner');

INSERT INTO OperatingManager (username) VALUES
('user01'), ('user09'), ('user17'), ('owner');