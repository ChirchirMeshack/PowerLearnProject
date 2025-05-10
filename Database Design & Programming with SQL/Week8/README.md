# The Ultimate Binge Log: A Personal Series/Movie Database

## Overview

This database is designed to help users track their movie and TV series watching habits. It allows users to log what they've watched, rate it, maintain a watchlist, and track progress on series. The database also provides a recommendation system based on viewing history.

## Database Schema

The database consists of the following tables:

### 1. Users

Stores user information.

*   **Columns:**
    *   `UserID` (INT, PRIMARY KEY, AUTO_INCREMENT): Unique identifier for the user.
    *   `Username` (VARCHAR(50), NOT NULL, UNIQUE): User's username (must be unique).
    *   `Password` (VARCHAR(255), NOT NULL): Hashed password for security.
    *   `Email` (VARCHAR(100), UNIQUE): User's email address (must be unique).
    *   `JoinDate` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP): Date when the user joined.

### 2. Media

Stores information about movies and TV series.

*   **Columns:**
    *   `MediaID` (INT, PRIMARY KEY, AUTO_INCREMENT): Unique identifier for the media.
    *   `MediaType` (ENUM('Movie', 'Series'), NOT NULL): Type of media (Movie or Series).
    *   `Title` (VARCHAR(255), NOT NULL): Title of the media.
    *   `ReleaseDate` (DATE): Release date of the media.
    *   `Description` (TEXT): Description or plot summary.
    *   `PosterURL` (VARCHAR(255)): URL to the media's poster image.
    *   `AverageRating` (DECIMAL(2,1), DEFAULT 0.0): Average rating for the media (0.0 to 5.0).

### 3. Genres

Stores a list of genres.

*   **Columns:**
    *   `GenreID` (INT, PRIMARY KEY, AUTO_INCREMENT): Unique identifier for the genre.
    *   `GenreName` (VARCHAR(50), NOT NULL, UNIQUE): Name of the genre (must be unique).

### 4. MediaGenres

Connects media items to their genres (Many-to-Many Relationship).

*   **Columns:**
    *   `MediaID` (INT, FOREIGN KEY referencing Media): Foreign key to Media table.
    *   `GenreID` (INT, FOREIGN KEY referencing Genres): Foreign key to Genres table.
    *   **Primary Key:** (`MediaID`, `GenreID`)

### 5. ViewingHistory

Stores the viewing history of users for different media items.

*   **Columns:**
    *   `UserID` (INT, FOREIGN KEY referencing Users): Foreign key to Users table.
    *   `MediaID` (INT, FOREIGN KEY referencing Media): Foreign key to Media table.
    *   `ViewDate` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP): Date and time when the media was viewed.
    *   `Rating` (INT, CHECK between 1 and 5): User's rating (1 to 5 stars).
    *   **Primary Key:** (`UserID`, `MediaID`, `ViewDate`)

### 6. Watchlist

Stores the user's watchlist.

*   **Columns:**
    *   `UserID` (INT, FOREIGN KEY referencing Users): Foreign key to Users table.
    *   `MediaID` (INT, FOREIGN KEY referencing Media): Foreign key to Media table.
    *   `AddedDate` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP): Date and time when the media was added to the watchlist.
    *   **Primary Key:** (`UserID`, `MediaID`)

### 7. SeriesProgress

Stores the user's progress on a series.

*   **Columns:**
    *   `UserID` (INT, FOREIGN KEY referencing Users): Foreign key to Users table.
    *   `MediaID` (INT, FOREIGN KEY referencing Media): Foreign key to Media table.
    *   `Season` (INT, NOT NULL): Season number.
    *   `Episode` (INT, NOT NULL): Episode number.
    *   `LastViewed` (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP): Date and time when the episode was last viewed.
    *   **Primary Key:** (`UserID`, `MediaID`, `Season`, `Episode`)

### 8. Recommendations

Stores media recommendations for users based on their viewing history.

*   **Columns:**
    *   `UserID` (INT, FOREIGN KEY referencing Users): Foreign key to Users table.
    *   `MediaID` (INT, FOREIGN KEY referencing Media): Foreign key to Media table.
    *   `RecommendationReason` (VARCHAR(255)): Reason for the recommendation.
    *   **Primary Key:** (`UserID`, `MediaID`)

## Relationships

*   **One-to-Many:**
    *   `Users` to `ViewingHistory`
    *   `Users` to `Watchlist`
    *   `Users` to `SeriesProgress`
    *   `Users` to `Recommendations`
    *   `Media` to `ViewingHistory`
    *   `Media` to `Watchlist`
    *   `Media` to `SeriesProgress`
    *   `Media` to `Recommendations`
    *
*   **Many-to-Many:**
    *   `Media` and `Genres` (through `MediaGenres`)

## Constraints

*   Primary Keys (PK) are defined for all tables to uniquely identify records.
*   Foreign Keys (FK) are used to establish relationships between tables and ensure referential integrity.
*   `NOT NULL` constraints are used to enforce required fields.
*   `UNIQUE` constraints are used to ensure unique values for usernames, emails, and genre names.
*   `CHECK` constraints are used to validate the rating values in the `ViewingHistory` table.

## File

*   `Watch.sql`: Contains the SQL statements to create the database schema.

## Usage

1.  Ensure you have MySQL installed and running.
2.  Create a new database in MySQL.
3.  Execute the `Watch.sql` script to create the tables and relationships.
