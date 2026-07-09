GRAND CHORD — DM SCREEN
=======================

WHAT THIS IS
------------
A reusable DM screen for the Grand Chord campaign. One HTML shell plus a
handful of small JSON data files. Everything persistent lives in the JSON;
the per-session prep boxes are scratch space that vanish when you close the
window.

FILES
-----
session_prep.html   The shell — open this in your browser
world.json          Campaign narrative + small persistent fields
spells.json         The spell list (cleric / sorcerer / warlock, levels 0-3)
reference.json      Skills, Turn Undead, and future class/feat/racial notes
monsters.json       The bestiary
npcgen.json         NPC generator tables (names, traits, looks, connections)
_archive.json       Parked old data (NPCs, locations, lore) — NOT loaded
start.sh            Mac/Linux launcher
start.bat           Windows launcher
README.txt          You are here

Optional:
Images/Maps/        Drop map images here (png/jpg/jpeg/webp/gif/svg).
                    The Maps tab auto-lists them.

FIRST-TIME SETUP
----------------
You need Python installed. Mac and most Linux machines have it already.
Windows: install from https://www.python.org/downloads/ and check
"Add Python to PATH" during install.

RUNNING IT
----------
1. Put all the files in one folder.
2. Mac/Linux:  double-click start.sh  (or run: bash start.sh)
              (if "permission denied", run once: chmod +x start.sh)
   Windows:   double-click start.bat
3. Open your browser to:
   http://localhost:8000/session_prep.html
4. When done, close the terminal/CMD window.

YOU ONLY NEED TO RUN THE SERVER WHEN YOU'RE USING THE TOOL.

THE TABS
--------
Session Prep   Scratch boxes (cold open, per-player beats, combat, world
               state, loose notes). NOT saved — fill before play, read
               during, close the window and they're gone. "Clear all"
               wipes them mid-session.
Combat         Initiative tracker. "+ Add Party" drops in all five PCs with
               blank stats. "Add monster..." pulls from the bestiary and
               shows its statblock under "In This Fight."
Bestiary       The full monster manual. "+ Tracker" sends one to combat.
Skills & Spells  The 18 skills, Turn Undead, and the spell browser
               (filter by class and level; click a spell for full text).
NPC Generator  Roll a stranger: name, trait, look, faction connection.
Maps           Auto-lists images from Images/Maps/. Click to pop out.
Narrative      Your campaign brain. This one DOES persist (saved in your
               browser). Arcs, threads, foreshadowing, the long game.

HOW EDITING WORKS
-----------------
There is no in-app "save" or "export." To change data permanently, edit the
JSON files directly on disk, then hit "Reload" in the app (or refresh).
Because the files are split by topic, you only open the one you're changing:

  - New spell?            edit spells.json
  - Tweak a monster?      edit monsters.json
  - Add a feat/racial?    edit reference.json
  - New NPC trait?        edit npcgen.json

The Narrative tab is the one exception: what you type there is saved in your
browser automatically, so it survives reloads and window closes.

Each file loads independently. If one is missing or malformed, the other
tabs still work — only that tab comes up empty, and the status pill at the
top tells you which file failed.

MAPS
----
Make a folder called Images/Maps next to session_prep.html and drop image
files in it. Open the Maps tab and they appear automatically. "Rescan
folder" picks up files added while the app is open. Click a map to open it
in its own window for screen-share.

TROUBLESHOOTING
---------------
"FAILED — RUN THE SERVER" pill
  -> You opened the HTML by double-clicking instead of via localhost.
     Run start.sh / start.bat first.

"LOADED (missing: X.json)" pill
  -> That one file didn't load. The rest works; fix that file and Reload.

"Address already in use"
  -> An old server is still running. Close other terminal windows, or edit
     the launcher to use a different port (e.g. 8001).

"permission denied: ./start.sh"
  -> Run:  bash start.sh   (or  chmod +x start.sh  once)

Maps don't open in new window
  -> Browser blocked the pop-up. Allow pop-ups for localhost.
