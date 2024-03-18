#!/usr/bin/python3
import MySQLdb
import sys

if __name__ == "__main__":
    # Connection parameters
    username = sys.argv[1]
    password = sys.argv[2]
    database = sys.argv[3]

    # Connect to MySQL server
    db = MySQLdb.connect(host="localhost", port=3306, user=username, passwd=password, db=database)

    # Create cursor object
    cursor = db.cursor()

    # Execute SQL query
    cursor.execute("SELECT * FROM states ORDER BY id ASC")

    # Fetch all the rows
    rows = cursor.fetchall()

    # Print results
    for row in rows:
        print(row)

    # Close cursor and connection
    cursor.close()
    db.close()
