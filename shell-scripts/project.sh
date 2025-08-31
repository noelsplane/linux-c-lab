#!/bin/bash

# Compile contacts.c
echo "Compiling contacts.c..."
gcc ../c-programs/contacts.c -o ../c-programs/contacts

# Create backup of contacts program
echo "Creating backup..."
cd ../c-programs
tar -czf contacts-backup.tar.gz contacts contacts.c

# Log the execution time
echo "Output logged at $(date)" >> project-log.txt

# Run the contacts program
echo "Running contacts program..."
./contacts
