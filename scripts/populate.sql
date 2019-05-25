USE feudal_society

-- KINGDOMS
INSERT INTO kingdoms (id, name)
VALUES
  (1, "Westeros"),
  (2, "Wildlands"),
  (3, "The North");

-- REGIONS
INSERT INTO regions (id, kingdom_id, name, climate, stretch)
VALUES
  (1, 3, "North", "Cold and harsh in winter and occasionally it will snow in summer", 1367942),
  (2, 1, "Iron Islands", "Oceanic climate with mild summers and mild winters and a relatively narrow annual temperature range and few extremes of temperature", NULL)
  (3, 1, "Riverlands", "Humid continental climate with large seasonal temperature differences", NULL),
  (4, 1, "The Vale", "Subartic climate with long, usually very cold winters, and short, cool to mild summers", NULL),
  (5, 1, "Westerlands", "Warm-summer mediterranean climate, warm (but not hot) and dry summers, with no average monthly temperatures above 22 °C during its warmest month and an average in the coldest month between 18 and −3 °C", NULL),
  (6, 1, "The reach", "Hot-summer mediterranean climate, monthly temperatures in excess of 22 °C during its warmest month and an average in the coldest month between 18 and −3 °C or, in some applications, between 18 and 0 °C", NULL),
  (7, 1, "Stormlands", "Humid subtropical climate, hot and humid summers, and cool to mild winters", NULL),
  (8, 1, "Crownlands", "Humid continental climate with large seasonal temperature differences", NULL),
  (9, 1, "Dorne", "Hot desert climate, hot, sunny and dry year-round", NULL),
  (10, 2, "Beyond the Wall", "Ice cap polar climate where no mean monthly temperature exceeds 0 °C", NULL),
  (11, 3, "The Gift", "Cold and harsh in winter and occasionally it will snow in summer", NULL);

-- HOUSES
INSERT INTO houses (id, name, symbol, colors, words)
VALUES
  (1, "Stark", "Direwolf", "Grey and White", "Winter is coming"),
  (2, "Lannister", "Lion", "Red and Yellow", "Hear me roar"),
  (3, "Targaryen", "Three-headed Dragon", "Red and Black", "Fire and blood"),
  (4, "Baratheon", "Deer", "Yellow and Black", "Ours is the fury"),
  (5, "Tyrell", "Flower", "Golden and Green", "Growing strong"),
  (6, "Bolton", "Flayed Man", "Red and Pink", "Our blades are sharp"),
  (7, "Arryn", "Falcon and a Moon", "Blue and White", "As high as honor"),
  (8, "Clegane", "Three Dogs", "Black and Yellow", "<Not yet known>"),
  (9, "Greyjoy", "Kraken", "Golden and Black", "We do not sow"),
  (10, "Manderly", "Merman", "Blue and Green", "<Not yet known>"),
  (11, "Hornwood", "Bullmoose", "Brown and Orange", "Righteous in wrath"),
  (12, "Mormont", "Bear", "Black and Green", "Here we stand"),
  (13, "Redwyne", "Grapes", "Blue and Purple", "<Not yet known>"),
  (14, "Reed", "Lizard-lion", "Black and Grey-green", "<Not yet known>"),
  (15, "Seaworth", "Ship", "Grey and Black", "<Not yet known>"),
  (16, "Tarly", "Huntsman", "Green and Red", "First in battle"),
  (17, "Tully", "Trout", "Red and Blue", "Family, duty, honor"),
  (18, "Forrester", "Ironwood tree", "Grey and Black", "Iron from ice"),
  (19, "Martell", "Sun and Spear", "Orange and Red", "Unbowed, unbent, unbroken"),
  (20, "Lefford", "Inverted pile and Sun", "Golden and Blue", "<Not yet known>"),
  (21, "Frey", "Two Towers", "Grey and Blue", "<Not yet known>"),
  (22, "Whent", "Bats", "Golden and Black", "<Not yet known>");

-- PEOPLE
INSERT INTO people (id, mother_id, father_id, region_id, name, is_alive, gender, biography)
VALUES
  (1, NULL, NULL, 1, "Rickard Stark", 0, "m",
    "Warden of the north and lord of Winterfell, father of four children, Lord Rickard was killed burned alive by Aerys Targaryen (the mad king) at the Red Keep in King's Landing."),
  (2, NULL, 1, 1, "Brandon Stark", 0, "m",
    "Heir to Lord Rickard, the elder of the four sons, Brandon Stark never got the chance to be named Lord of Winterfell as he was killed along with his father choked to death in King's Landing."),
  (3, NULL, 1, 1, "Eddard Stark", 0, "m",
    "Warden of the north and lord of Winterfell, father of five children, Lord Eddard (Ned) Stark led the rebellion along with his long term friend Robert Baratheon after the murder of his father and brother and the (supposed) kidnaping of his sister. After Robert was crowned king of the seven kingdoms, Ned returned to Winterfell until he received an invitation from the capital to be tha hand of the king. After King Robert passed away, Ned was accused of treachery against the crown by Robert's widow Cersei Lannister and executed (beheaded) by their son Joffrey Baratheon."),
  (4, NULL, 1, 1, "Benjen Stark", 0, "m",
    "During the rebellion agains the mad king, Benjen Stark was the lord and the Stark in Winterfell (as they say 'A Stark must always be in Winterfell'). After the rebellion ended, Benjen joined the Night Watch disposing of all of his titles and lands. Years later, Benjen gone missing during a patrol beyond the wall, his whereabouts were unkown for months and he was assumed dead."),
  (5, NULL, 1, 1, "Lyanna Stark", 0, "f",
    "The only daughter of Rickard Stark, Lyanna was promissed to Robert Baratheon (who loved her deeply) to unite the houses Stark and Baratheon in marriage, however, before they could marry, Lyanna was supposedly kidnaped by the mad king's son, prince Rhaegar Targaryen, this led Robet to rebel against the crown along with Lyanna's brother Eddard (Ned) Stark. At the end of the rebellion, Ned found Lyanna in a tower in Dorne on the brink of death after giving birth to his son, which she begs Ned to raise as his own. Years later, through a document at the citadel, Samwell Tarly finds out that the prince Rhaegar did'nt actually kidnaped Lyanna and that they were actually in love so they ran away together and got married in a secret ceremony in Dorne."),
  (6, NULL, NULL, 3, "Robbyrt Tully", 0, "m", "Warden of the Riverlands and lord of Riverrun, Robbyrt Tully was the father of two children."),
  (7, NULL, NULL, 5, "Sansa Lefford", 0, "f", "Lady of Riverrun and mother of two children"),
  (8, 7, 6, 3, "Hoster Tully", 0, "m",
    "Warden of the Riverlands and lord of Riverrun, Hoster Tully was the father of three children. Lord Hoster died of old age during the war of the five kings."),
  (9, NULL, NULL, 3, "Minisa Whent", 0, "f", "Lady of Riverrun and mother of trhee children"),
  (10, 9, 8, "Catelyn Tully", 0, "f",
    "Lady of Winterfell and mother of five children, Lady Catelyn went south with her son, King Robb Stark, during the war of the five kings after her husband, Eddard (Ned) Stark was made prisioner in King's Landing. Catelyn was accused of treachery by some northerners lords after she set Jaime Lannister (the kingslayer), King Robb's prisioner, free in an attempt to rescue her daughters from the capital. Lady Catelyn was killed by Raymund Frey in the night that is known as the Red Wedding at the Twins."),
  (11, 10, 3, 1, "Robb Stark", 0, "m",
    "King in the North and lord of Winterfell during the war of the five kings, Robb Stark was the elder son of Eddard (Ned) Stark. Robb raised his banners and marched south with the armies of the north to wage war against the capital after his father was accused of treachery against the crown. After Ned's execution, Robb was named King in the North by the northerners lords. King Robb was betrayed and killed by Roose Bolton in the night that is known as the Red Wedding at the Twins.")
