# README

# Problem
Designer didn't have app to publish their artwork easily.
User want to get and custormize their favorite stickers.

# Proposed Solution
I created the app called "sticker you" which can link designers and users.

# User stories
<img width="1145" alt="2017-10-31 15 37 17" src="https://user-images.githubusercontent.com/30609812/32209347-f415fe6c-be5b-11e7-875f-020695711003.png">

# Wireframes

# ERD (entity relationship diagram)
<img width="1432" alt="erd" src="https://user-images.githubusercontent.com/30609812/32209213-3ea88784-be5b-11e7-938e-083eb986a0ef.png">
# Design (figma, fonts, colours)

# Models

# Problem with this project and what did I learn

When I got this error: "SQLite3::SQLException: no such table: xxxx: DROP TABLE"(in terminal)
Solution: $rake db:drop
          $rake db:migrate

How to drop table: add "drop_table" in "def change -- end" in migration file.
then run $ rails db:migrate

"type" could not use as a colum. To rename the colum, run
$ rails generate migration rename_type_column_to_products
```
def change
  rename_column :products, :type, :kind
end
```
Then run
$ rake db:migrate




# sticker_you
