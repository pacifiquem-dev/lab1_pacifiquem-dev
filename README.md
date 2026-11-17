This project simulates a Full Self Driving (FSD) car travelling from ALU Rwanda to the Kigali Convention Centre. The road is a Python list called road, where each item is one 100 m segment: a speed limit sign ("60", "80"), a "zebra" crossing, a "bus" (the car changes lane), or plain "road".

I implemented the 10 logic functions in road_simulation.py. A web page (index.html) shows the car driving, and transit_program.py and engine.py run the simulation using my functions. An optional Bash script, analyze_log.sh, summarises the session log.
Project structure
lab1_<pacifiquem-dev>/
├── road_simulation.py   
├── transit_program.py   
├── engine.py            
├── index.html           
├── analyze_log.sh       
└── Readme.md
How to run
Open a terminal in the project folder.
Run python road_simulation.py (or python3 road_simulation.py).
Enter a driver name, then use the road editor menu.
Choose 5. Start driving, then open the link shown (e.g. http://127.0.0.1:8008).
Return to the terminal and press Enter. The car starts driving.

To analyse the log (after at least one run): bash analyze_log.sh 

Shell script: analyze_log.sh

Reads transit_session.log (or the file given as the first argument) and prints:

the number of sessions (runs)
the number of zebra crossing stops
the number of lane changes
the driver name and top speed of the latest completed trip

If the file does not exist, it prints an error and exits with code 1.
