##Functional Representation##

Objects | Messages
------- | --------
Person |
Bike | working?
Bike | dock
DockingStation | release_bike
DockingStation | has_bike?
DockingStation | empty? 


##Diagram##
Bike <-- working? -- > true/false  
Bike <-- dock --> dock bike  
DockingStation <-- release_bike --> get bike  
DockingStation <-- has_bike? --> true/false
