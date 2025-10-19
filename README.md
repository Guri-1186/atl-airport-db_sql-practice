

# ATL Database Design (Harvard CS50 SQL – Problem Set 2)

This project is part of **Harvard’s CS50 SQL course**, where the task is to design a relational database system for **Hartsfield–Jackson Atlanta International Airport (ATL)** — the busiest airport in the world.

## The goal is to create a **database schema** (`schema.sql`) that can track passengers, airlines, flights, and check-ins. The design is implemented using **SQLite** and includes relationships between the tables through primary and foreign keys.

# ATL Airport Database Design

## Problem to Solve

Hartsfield-Jackson International Airport, perhaps better known as “ATL” for its IATA airport code, has been the busiest airport in the world since 1998. Located in Atlanta, Georgia in the United States, ATL served 93.7 million passengers in 2022. Maybe you were one of them!

Suppose you’ve just been hired to help ATL re-design their database system. In a file called `schema.sql` in a folder called `atl`, write a set of SQL statements to design a database with which Hartsfield-Jackson could keep track of its passengers and their flights.

Wondering how to create a folder and file yourself?

## Specification

Your task at hand is to create a SQLite database for ATL from scratch, by writing a set of `CREATE TABLE` statements in a `schema.sql` file. The implementation details are up to you, though you should minimally ensure your database meets the airport’s requirements and that it can represent the given sample data.

### Requirements

To understand ATL’s requirements for their database, you sat down to have a conversation with the Assistant General Manager for IT Operations.

### Passengers

When it comes to our passengers, we just need to have the essentials in line: first name, last name, and age. That’s all we need to know—nothing more.

### Check-Ins

When passengers arrive at ATL, they’ll often “check in” to their flights. That’s them telling us they’re here and all set to board. Here’s what we need to log:

- The exact date and time at which our passenger checked in
- The flight they are checking in for

### Airlines

ATL’s a hub for many domestic and international airlines: names like Delta, British Airways, Air France, Korean Air, and Turkish Airlines. Here’s what we track:

- The name of the airline
- The “concourse” or section of the airport where the airline operates (7 concourses: A, B, C, D, E, F, T)

### Flights

We serve as many as 1,000 flights daily. To ensure that our passengers are never left wondering, we need to store all critical details about their flight:

- The flight number (e.g., “900”; note that flight numbers may be re-used)
- The airline operating the flight (assume one flight is operated by one airline)
- The code of the airport they’re departing from (e.g., “ATL” or “BOS”)
- The code of the airport they’re heading to
- The expected departure date and time (to the minute)
- The expected arrival date and time (to the minute)
