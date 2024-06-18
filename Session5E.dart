// Think of an Object
// Flight: airline, flightNumber, departureLocation, arrivalLocation, departureTime, arrivalTime, fare

class Flight {
  String airline;
  String flightNumber;
  String departureLocation;
  String arrivalLocation;
  DateTime departureTime;
  DateTime arrivalTime;
  int fare;

  static int totalFlights = 0;

  Flight({
    required this.airline,
    required this.flightNumber,
    required this.departureLocation,
    required this.arrivalLocation,
    required this.departureTime,
    required this.arrivalTime,
    required this.fare,
  }) {
    totalFlights++;
  }

  void displayFlight() {
    print(
        "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("AIRLINE: $airline NUMBER: $flightNumber");
    print("FROM: $departureLocation TO: $arrivalLocation");
    print("DEPART AT: $departureTime ARRIVE AT: $arrivalTime");
    print("DURATION: ${getDuration()}");
    print("FARE: \u20b9 $fare");
    print(
        "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
  }

  Duration getDuration() {
    return arrivalTime.difference(departureTime);
  }
}

void main() {
  var flights = [
    Flight(
        airline: "IndiGo",
        flightNumber: "6E 614",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 14, 30),
        arrivalTime: DateTime(2024, 6, 18, 17, 00),
        fare: 14340),
    Flight(
        airline: "IndiGo",
        flightNumber: "6E 614",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 15, 50),
        arrivalTime: DateTime(2024, 6, 18, 20, 25),
        fare: 18429),
    Flight(
        airline: "Vistara",
        flightNumber: "UK 971, UK 555",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 6, 55),
        arrivalTime: DateTime(2024, 6, 18, 15, 10),
        fare: 20426),
    Flight(
        airline: "IndiGo",
        flightNumber: "6E 614",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 16, 30),
        arrivalTime: DateTime(2024, 6, 18, 19, 30),
        fare: 16325),
    Flight(
        airline: "Air India",
        flightNumber: "AI 464, AI 860",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 22, 45),
        arrivalTime: DateTime(2024, 6, 19, 22, 00),
        fare: 9314)
  ];

  // flights.forEach((element) {
  //   print(element);
  // });

  flights.forEach((element) => element.displayFlight());

  flights.sort((flight1, flight2) =>
      flight1.getDuration().compareTo(flight2.getDuration()));

  print("\n@@@@@@@@@@@@@@@SORTED FLIGHTS@@@@@@@@@@@@@@@@@@@@\n");

  flights.forEach((element) => element.displayFlight());
}

// Explore: Different ways of Sorting
// Configure VS Code with Flutter SDK