# README


# Problem


# Proposed Solution

# User stories


# Wireframes

# ERD (entity relationship diagram)
![ERD](/images/erd.png)
# Design (figma, fonts, colours)

# Models

#Problem with this project and what did I learn
When I got this error: "SQLite3::SQLException: no such table: xxxx: DROP TABLE"(in terminal)
Solution: $rake db:drop
          $rake db:migrate

How to drop table: add "drop_table" in "def change -- end" in migration file.
then run $ rails db:migrate
# sticker_you
