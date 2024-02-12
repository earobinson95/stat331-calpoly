# Stats331_PA_Taylor_Swift_Superbowl
The following repo is of a practice activity I designed to help students get familiar with the <a href = https://lubridate.tidyverse.org/> Lubridate </a> library in R.

The dataset is collected using the <a href = https://serpapi.com/google-flights-api> Serpapi Google Flights API </a> but has been subsetted and cleaned up to be more relevant for this assignment.


# Background

Taylor Swift, one of the world's most popular pop singers, has just been invited to sing at the Super Bowl. Unfortunately, Taylor has a very tight schedule with a concert in Tokyo Japan the night before, and her private jet has a technical issue, so she could not use it to bring her to Vegas.  She contacted you knowing that you are an expert flight tracker and data analyst in helping her find a route to attend the event so she would not disappoint her fans. You quickly query the GDS (the underlying database powering nearly all modern flight booking websites) which returns the following CSV file of all the available flights between Tokyo and Vegas for the Super Bowl weekend.  
Use the following dataset and your knowledge of R data manipulation to find the shortest route for Taylor to take from her Tokyo concert to the Super Bowl in Las Vegas Nevada.

# Data Schedma 

Students will be provided with a CSV file containing flight data.  Each entry will contain the following :
| Coloum | Description |
| ------ | ----------- |
| 🔑Itinerary | Itinerary Number for each possible route between Tokyo and Las Vegas on the days 2/10/24  & 2/11/24  |
| 🔑Leg | Itinerary Parts ie: 1st part,2nd part ... One flight per part at most 4 parts per route |
| Departure_Airport | The departing airport of said flight (Full name)
| Departure_Airport_IATA_Abbrv |  The departing airport of said flight (Abbreviated with the 3-letter IATA airport identifier) |
| Departure_Time | Departure local time of the flight |
| Arrival_Airport | The arriving airport of said flight (Full name)
| Arrival_Airport_IATA_Abbrv |  The arriving airport of said flight (Abbreviated with the 3-letter IATA airport identifier) |
| Arrival_Time |  Arrival local time of the flight |
| Flight_Duration | Duration of the flight in minutes|
| Aircraft | Aircraft used for the flight |
| Airline | Airline operating the flight |
| Flight_Number | Flight number of the flight |
| Flight_Overnight | <BOOLEAN> is the flight overnight (TRUE/FALSE) |
| Layover_Duration | Length of the layover between connections.  If it's the last flight of the itinerary, will be 0 |

