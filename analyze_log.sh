#!/bin/bash
LOG_FILE="${1:-transit_session.log}"

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: log file '$LOG_FILE' not found. Run the simulation first." >&2
    exit 1
fi

sessions=$(grep -c "New session started" "$LOG_FILE")
zebras=$(grep -c "Zebra crossing! Stopping" "$LOG_FILE")
lanes=$(grep -c "Changing lane:" "$LOG_FILE")
driver=$(grep "\] Driver " "$LOG_FILE" | tail -n 1 | sed 's/.*: *//')
top=$(grep "\] Top speed" "$LOG_FILE" | tail -n 1 | sed 's/.*: *//')

echo "===== LOG SUMMARY ($LOG_FILE) ====="
echo "Sessions          : $sessions"
echo "Zebra stops       : $zebras"
echo "Lane changes      : $lanes"
echo "Latest driver     : ${driver:-N/A}"
echo "Latest top speed  : ${top:-N/A}"