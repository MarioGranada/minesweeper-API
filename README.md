Deviget minesweeper API
=======================

Web API layer for Deviget minesweeper. It is built on Ruby on Rails linked to a MongoDB Local Database.

This API will be called by any Minesweeper application which needs to preserve data for its users and their games/boards.

This API includes creating, updating, listing and querying users info, as well as creating and updating games for each user.

## Requirements

* MongoDB instance up and running

* RVM

* Ruby version 2.4.1

* Rails 5.1.4

* API Development environment (Postman, JMeter, etc.)

## Routes Overview
 Prefix Verb  URI Pattern                             Controller#Action
        users GET   /users(.:format)                        users#index
              POST  /users(.:format)                        users#create
         user GET   /users/:id(.:format)                    users#show
              PATCH /users/:id(.:format)                    users#update
              PUT   /users/:id(.:format)                    users#update
         game GET   /games/:id(.:format)                    games#show
              PATCH /games/:id(.:format)                    games#update
              PUT   /games/:id(.:format)                    games#update
user_by_email GET   /user_by_email(.:format)                users#find_user_by_email
              GET   /users/:id/games(.:format)              users#read_games
              POST  /users/:id/games(.:format)              users#add_game
              POST  /games/:id/update_single_cell(.:format) games#update_single_cell
              POST  /games/:id/update_cells_group(.:format) games#update_cells_group
