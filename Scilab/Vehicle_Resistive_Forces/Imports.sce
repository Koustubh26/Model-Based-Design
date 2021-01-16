// Importing Drive Cycle
data = csvRead("track.csv")
Drive.time = data(3:470,1)
Drive.values = data(3:470,2)

// Importing Grade Data
value = csvRead("Grade Data.csv")
Grade.time = value(3:470,1)
Grade.values = value(3:470,2)
