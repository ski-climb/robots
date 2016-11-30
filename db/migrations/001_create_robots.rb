require 'sqlite3'

database = SQLite3::Database.new("db/robot_manager_development.db")
database.execute("CREATE TABLE robots (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                       name VARCHAR(64),
                                       city VARCHAR(64),
                                       state VARCHAR(64),
                                       department VARCHAR(64)
                                       )"
                )

database.execute("INSERT INTO robots(name, city, state, department) VALUES (?, ?, ?, ?);",
                 "Todd", "Denver", "Colorado", "Mysteries")
database.execute("INSERT INTO robots(name, city, state, department) VALUES (?, ?, ?, ?);",
                 "Susan", "Tucson", "Arizona", "Muggle Relations")
database.execute("INSERT INTO robots(name, city, state, department) VALUES (?, ?, ?, ?);",
                 "C-3PO", "Mos Eisley", "Tattoine", "Francais")
database.execute("INSERT INTO robots(name, city, state, department) VALUES (?, ?, ?, ?);",
                 "Han Solo", "Millenium", "Falcon", "Confusion")
database.execute("INSERT INTO robots(name, city, state, department) VALUES (?, ?, ?, ?);",
                 "Bobba Fett", "Cloud City", "Nevada", "Accidental Magical Reversal Squad")

puts "creating robots table for devlopment and robots for smashing"
