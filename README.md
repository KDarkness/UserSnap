# UserSnap
User snapshot
User Snapshot 
Checks for the existence of the snapshot directory (/var/backups/user_snapshots).
Creates the directory if it doesn't already exist, ensuring a designated location for storing user snapshots.
Records the current date and time in the specified log file (/var/log/user_snapshot.log).
Utilizes awk to extract usernames from the /etc/passwd file, filtering users with UID greater than or equal to 1000.
Sorts the list of users alphabetically and appends it to the log file.
