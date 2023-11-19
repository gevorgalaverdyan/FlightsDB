CREATE TABLE Airplane(
SNID INTEGER PRIMARY KEY NOT NULL,
capacity INTEGER NOT NULL,
max_speed REAL NOT NULL
)

CREATE TABLE PrivateJet (
    SNID INTEGER PRIMARY KEY,
    owner_name VARCHAR(40),
    FOREIGN KEY (SNID) REFERENCES Airplane (SNID) ON DELETE CASCADE
);

CREATE TABLE CommercialPlane (
    SNID INTEGER PRIMARY KEY,
    airline_name VARCHAR(40),
    FOREIGN KEY (SNID) REFERENCES Airplane (SNID) ON DELETE CASCADE
);

INSERT INTO Airplane (SNID, capacity, max_speed)
VALUES
    (1, 150, 800.5),
    (2, 200, 900.0),
    (3, 180, 820.3),
    (4, 210, 880.8),
    (5, 190, 810.1),
    (6, 220, 950.2),
    (7, 170, 830.5),
    (8, 200, 900.3),
    (9, 180, 810.9),
    (10, 160, 780.4),
    (11, 190, 850.7),
    (12, 220, 920.6),
    (13, 200, 890.2),
    (14, 210, 860.1),
    (15, 180, 830.0),
    (16, 170, 820.8),
    (17, 190, 810.5),
    (18, 200, 870.3),
    (19, 180, 840.2),
    (20, 160, 800.7),
    (21, 210, 890.4),
    (22, 190, 810.6),
    (23, 220, 940.1),
    (24, 170, 830.7),
    (25, 200, 910.5),
    (26, 180, 820.0),
    (27, 160, 780.2),
    (28, 210, 900.8),
    (29, 190, 830.9),
    (30, 220, 960.0),
    (31, 170, 840.3),
    (32, 200, 920.2),
    (33, 180, 810.4),
    (34, 160, 790.1),
    (35, 190, 840.7),
    (36, 210, 890.5),
    (37, 200, 870.7),
    (38, 180, 830.6),
    (39, 160, 800.9),
    (40, 170, 820.2),
    (41, 190, 860.3),
    (42, 210, 910.8),
    (43, 180, 830.4),
    (44, 220, 940.6),
    (45, 160, 780.8),
    (46, 200, 900.9),
    (47, 190, 850.2),
    (48, 220, 950.5),
    (49, 190, 830.2),
    (50, 210, 920.7);
