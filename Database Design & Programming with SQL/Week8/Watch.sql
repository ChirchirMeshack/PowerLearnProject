-- The Ultimate Binge Log: A Personal Series/Movie Database

-- This SQL file contains the CREATE TABLE statements for a database designed to track movies and TV series.
-- It includes tables for users, media (movies/series), genres, and viewing history.

-- Table: Users
-- Stores user information.
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for the user
    Username VARCHAR(50) NOT NULL UNIQUE,   -- User's username (must be unique)
    Password VARCHAR(255) NOT NULL,        -- Hashed password for security
    Email VARCHAR(100) UNIQUE,             -- User's email address (must be unique)
    JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Date when the user joined
);

-- Table: Media
-- Stores information about movies and TV series.
CREATE TABLE Media (
    MediaID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for the media
    MediaType ENUM('Movie', 'Series') NOT NULL, -- Type of media (Movie or Series)
    Title VARCHAR(255) NOT NULL,           -- Title of the media
    ReleaseDate DATE,                       -- Release date of the media
    Description TEXT,                       -- Description or plot summary
    PosterURL VARCHAR(255) ,                 -- URL to the media's poster image
    AverageRating DECIMAL(2,1) DEFAULT 0.0  -- Average rating for the media (0.0 to 5.0)
);

-- Table: Genres
-- Stores a list of genres.
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for the genre
    GenreName VARCHAR(50) NOT NULL UNIQUE    -- Name of the genre (must be unique)
);

-- Table: MediaGenres (Many-to-Many Relationship)
-- Connects media items to their genres.
CREATE TABLE MediaGenres (
    MediaID INT,                           -- Foreign key to Media table
    GenreID INT,                           -- Foreign key to Genres table
    PRIMARY KEY (MediaID, GenreID),          -- Composite primary key
    FOREIGN KEY (MediaID) REFERENCES Media(MediaID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- Table: ViewingHistory
-- Stores the viewing history of users for different media items.
CREATE TABLE ViewingHistory (
    UserID INT,                            -- Foreign key to Users table
    MediaID INT,                           -- Foreign key to Media table
    ViewDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time when the media was viewed
    Rating INT CHECK (Rating >= 1 AND Rating <= 5), -- User's rating (1 to 5 stars)
    PRIMARY KEY (UserID, MediaID, ViewDate), -- Composite primary key
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MediaID) REFERENCES Media(MediaID)
);

-- Table: Watchlist
-- Stores the user's watchlist
CREATE TABLE Watchlist (
    UserID INT,                           -- Foreign key to Users table
    MediaID INT,                           -- Foreign key to Media table
    AddedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time when the media was added to the watchlist
    PRIMARY KEY (UserID, MediaID),          -- Composite primary key
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MediaID) REFERENCES Media(MediaID)
);

-- Table: SeriesProgress
-- Stores the user's progress on a series
CREATE TABLE SeriesProgress (
    UserID INT,                           -- Foreign key to Users table
    MediaID INT,                           -- Foreign key to Media table
    Season INT NOT NULL,                   -- Season number
    Episode INT NOT NULL,                  -- Episode number
    LastViewed TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time when the episode was last viewed
    PRIMARY KEY (UserID, MediaID, Season, Episode), -- Composite primary key
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MediaID) REFERENCES Media(MediaID)
);

-- Table: Recommendations
-- Stores media recommendations for users based on their viewing history
CREATE TABLE Recommendations (
    UserID INT,                           -- Foreign key to Users table
    MediaID INT,                           -- Foreign key to Media table
    RecommendationReason VARCHAR(255),     -- Reason for the recommendation
    PRIMARY KEY (UserID, MediaID),          -- Composite primary key
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MediaID) REFERENCES Media(MediaID)
);