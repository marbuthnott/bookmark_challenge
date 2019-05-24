# Bookmark Challenge

## Introduction

This is the week 4 weekly challenge of the Makers Academy software engineering bootcamp. It consolidates the web app skills learnt in the previous week with the added complexity of working with a database.

## Requirements

You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## User Stories
```
As a User,
So I can see the bookmarks,
I would like the system to display a list of bookmarks.

As a user,
So I can manage my bookmarks
I would like to add new bookmarks to my list.

As a user,
So I can remove a bookmark,
I would like the system to delete a specific row from the bookmarks table.

As a user,
So I can update a bookmark,
I would like the system to modify a bookmark.
```

### User Story 1
```
As a User,
So I can see the bookmarks,
I would like the system to display a list of bookmarks.
```
<p align="center">
  <img width="460" height="300" src="https://github.com/marbuthnott/bookmark_challenge/blob/master/domain_model_story1.jpg?raw=true/460/300">
</p>

## Getting Started

### To set up the database

1. Install PostgreSQL - used `brew install postgresql`.
2. Started PostgreSQL via `brew services start postgresql`.
3. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`.
4. Connect to the database using the `pqsl` command `\c bookmark_manager;`.
5. Run the query we have saved in the file `db/migrations/01_create_bookmarks_table.sql`.

### To set up the testing environment

1. Created a `bookmarks_manager_test`. In psql run:
```
CREATE DATABASE "bookmark_manager_test";
```
2. Connect to the new database with `\c bookmarks_manager_test` and run the query we have saved in the file `db/migrations/01_create_bookmarks_table.sql`.

### To run the Bookmark Manager app

1. Run `rackup -p 3000` from the command line.

2. To view bookmarks, navigate to `localhost:3000/bookmarks`.