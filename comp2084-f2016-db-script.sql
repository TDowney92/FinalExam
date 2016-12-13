CREATE TABLE Divisions
(DivisionID INT NOT NULL IDENTITY PRIMARY KEY,
Name VARCHAR(50) NOT NULL);

INSERT INTO Divisions (Name) VALUES 
('Metropolitan'), ('Atlantic'), ('Central'), ('Pacific');

CREATE TABLE Teams
(TeamID INT NOT NULL IDENTITY PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Games INT,
Wins INT,
Losses INT,
OvertimeLosses INT,
Points INT,
DivisionID INT NOT NULL,
Logo VARCHAR(100),
CONSTRAINT FK_Teams_Divisions FOREIGN KEY (DivisionID) REFERENCES Divisions (DivisionID));


INSERT INTO Teams (Name, Games, Wins, Losses, OvertimeLosses, Points, DivisionID, Logo) VALUES
('New York Rangers', 30, 20, 9, 1, 41, 1, 'rangers.gif'),
('Pittsburgh Penguins', 28, 18, 7, 3, 39, 1, 'penguins.gif'),
('Philadelphia Flyers', 31, 18, 10, 3, 39, 1, 'flyers.gif'),
('Columbus Blue Jackets', 26, 17, 5, 4, 38, 1, 'blue-jackets.gif'),
('Washington Capitals', 27, 17, 7, 3, 37, 1, 'capitals.gif'),
('New Jersey Devils', 28, 12, 10, 6, 30, 1, 'devils.gif'),
('Carolina Hurricanes', 28, 11, 11, 6, 28, 1, 'hurricanes.gif'),
('New York Islanders', 27, 11, 11, 5, 27, 1, 'islanders.gif'),
('Montreal Canadiens', 28, 19, 6, 3, 41, 2, 'canadiens.gif'),
('Ottawa Senators', 29, 16, 11, 2, 34, 2, 'senators.gif'),
('Boston Bruins', 29, 15, 12, 2, 32, 2, 'bruins.gif'),
('Tampa Bay Lightning', 29, 14, 13, 2, 30, 2, 'lightning.gif'),
('Florida Panthers', 29, 13, 12, 4, 30, 2, 'panthers.gif'),
('Detroit Red Wings', 29, 13, 13, 4, 30, 2, 'red-wings.gif'),
('Toronto Maple Leafs', 27, 11, 11, 5, 27, 2, 'maple-leafs.gif'),
('Buffalo Sabres', 27, 10, 11, 6, 26, 2, 'sabres.gif'),
('Chicago Blackhawks', 30, 18, 8, 4, 40, 3, 'blackhawks.gif'),
('St. Louis Blues', 29, 16, 9, 4, 36, 3, 'blues.gif'),
('Minnesota Wild', 27, 15, 8, 4, 34, 3, 'wild.gif'),
('Winnipeg Jets', 32, 13, 16, 3, 29, 3, 'jets.gif'),
('Nashville Predators', 27, 12, 11, 4, 28, 3, 'predators.gif'),
('Dallas Stars', 30, 11, 13, 6, 28, 3, 'stars.gif'),
('Colorado Avalanche', 27, 11, 15, 1, 23, 3, 'avalanche.gif'),
('Anaheim Ducks', 29, 15, 9, 5, 35, 4, 'ducks.gif'),
('Edmonton Oilers', 31, 15, 11, 5, 35, 4, 'oilers.gif'),
('Calgary Flames', 31, 16, 13, 2, 34, 4, 'flames.gif'),
('San Jose Sharks', 28, 16, 11, 1, 33, 4, 'sharks.gif'),
('Los Angeles Kings', 27, 14, 11, 2, 30, 4, 'kings.gif'),
('Vancouver Canucks', 29, 12, 15, 2, 26, 4, 'canucks.gif'),
('Arizona Coyotes', 27, 9, 13, 5, 23, 4, 'coyotes.gif')