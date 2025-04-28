#!/usr/bin/env bash

# 1. Delete old database if needed (optional safety)
rm -f data.db

# 2. Create new database and table
sqlite3 data.db "
CREATE TABLE messages (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
"

# 3. Insert some starter/test entries
sqlite3 data.db "
INSERT INTO messages (name, message) VALUES
('Cris', 'Testing this rad guestbook! 🚀'),
('Skylar', 'Love the retro vibes! 💾'),
('Nova', 'Broadcasting from the stars. 🌠'),
('Orion', 'Walking among the indie web! 🌌');
"

