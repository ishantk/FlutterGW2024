void main() {
  /*

  var flight1 = {
    "source": "chandigarh",
    "destinition": "goa",
    "departureTime": "14:30",
    "arrivalTime": "17:00",
    "duration": "2hrs 45mins",
    "price": 11800,
    "carrier": "Indigo",
  };

  var flight2 = {
    "source": "chandigarh",
    "destinition": "goa",
    "departureTime": "22:30",
    "arrivalTime": "19:00",
    "duration": "2hrs 45mins",
    "price": 13800,
    "carrier": "SpiceJet",
  };

  var flight3 = {
    "source": "chandigarh",
    "destinition": "goa",
    "departureTime": "10:00",
    "arrivalTime": "12:00",
    "duration": "2hrs",
    "price": 15000,
    "carrier": "Vistara",
  };

  var flights = [flight1, flight2, flight3];

  */

  var flights = [
    {
      "source": "chandigarh",
      "destinition": "goa",
      "departureTime": "14:30",
      "arrivalTime": "17:00",
      "duration": "2hrs 45mins",
      "price": 11800,
      "carrier": "Indigo",
    },
    {
      "source": "chandigarh",
      "destinition": "goa",
      "departureTime": "22:30",
      "arrivalTime": "19:00",
      "duration": "2hrs 45mins",
      "price": 13800,
      "carrier": "SpiceJet",
    },
    {
      "source": "chandigarh",
      "destinition": "goa",
      "departureTime": "10:00",
      "arrivalTime": "12:00",
      "duration": "2hrs",
      "price": 15000,
      "carrier": "Vistara",
    }
  ];

  print(flights[2]["carrier"]);

  // Enhanced For Loop
  for (var flight in flights) {
    print("Flight: ${flight["carrier"]} ${flight["price"]}");
  }

  print("~~~~~~~~~~~~~~~~");

  // Traditional For Loop
  for (int idx = 0; idx < flights.length; idx++) {
    print("Flight: ${flights[idx]["carrier"]} ${flights[idx]["price"]}");
  }

  // Explore Sorting Algorithms
  var data = [10, 20, 30, 55, 67, 12, 32];
}
