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

void bubbleSort(List<Flight> flightList, int sort) {
  int n = flightList.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      print(">> $i | $j Comparing ${flightList[j]} with ${flightList[j + 1]}");

      if (sort == 0) {
        if (flightList[j].fare > flightList[j + 1].fare) {
          Flight temp = flightList[j];
          flightList[j] = flightList[j + 1];
          flightList[j + 1] = temp;
          print(">> Swapped ${flightList[j]} with ${flightList[j + 1]}");
        }
      } else {
        if (flightList[j].fare < flightList[j + 1].fare) {
          Flight temp = flightList[j];
          flightList[j] = flightList[j + 1];
          flightList[j + 1] = temp;
          print(">> Swapped ${flightList[j]} with ${flightList[j + 1]}");
        }
      }
    }
  }
}

void bubbleSortOnDuration(List<Flight> flightList, int sort) {
  int n = flightList.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      print(">> $i | $j Comparing ${flightList[j]} with ${flightList[j + 1]}");

      if (sort == 0) {
        if (flightList[j].getDuration() > flightList[j + 1].getDuration()) {
          Flight temp = flightList[j];
          flightList[j] = flightList[j + 1];
          flightList[j + 1] = temp;
          print(">> Swapped ${flightList[j]} with ${flightList[j + 1]}");
        }
      } else {
        if (flightList[j].getDuration() < flightList[j + 1].getDuration()) {
          Flight temp = flightList[j];
          flightList[j] = flightList[j + 1];
          flightList[j + 1] = temp;
          print(">> Swapped ${flightList[j]} with ${flightList[j + 1]}");
        }
      }
    }
  }
}

void main() {
  /*
  var flight1 = Flight(
      airline: "IndiGo",
      flightNumber: "6E 614",
      departureLocation: "Chandigarh",
      arrivalLocation: "Goa - Dabolim Airport",
      departureTime: DateTime(2024, 6, 18, 14, 30),
      arrivalTime: DateTime(2024, 6, 18, 17, 00),
      fare: 14340);

  var flight2 = Flight(
      airline: "IndiGo",
      flightNumber: "6E 614",
      departureLocation: "Chandigarh",
      arrivalLocation: "Goa - Dabolim Airport",
      departureTime: DateTime(2024, 6, 18, 15, 50),
      arrivalTime: DateTime(2024, 6, 18, 20, 25),
      fare: 18429);

  var flight3 = Flight(
      airline: "Vistara",
      flightNumber: "UK 971, UK 555",
      departureLocation: "Chandigarh",
      arrivalLocation: "Goa - Dabolim Airport",
      departureTime: DateTime(2024, 6, 18, 6, 55),
      arrivalTime: DateTime(2024, 6, 18, 15, 10),
      fare: 20426);

  var flight4 = Flight(
      airline: "IndiGo",
      flightNumber: "6E 614",
      departureLocation: "Chandigarh",
      arrivalLocation: "Goa - Dabolim Airport",
      departureTime: DateTime(2024, 6, 18, 16, 30),
      arrivalTime: DateTime(2024, 6, 18, 19, 30),
      fare: 16325);

  var flight5 = Flight(
      airline: "Air India",
      flightNumber: "AI 464, AI 860",
      departureLocation: "Chandigarh",
      arrivalLocation: "Goa - Dabolim Airport",
      departureTime: DateTime(2024, 6, 18, 22, 45),
      arrivalTime: DateTime(2024, 6, 19, 22, 00),
      fare: 9314);

  //List<Flight> flights = [flight1, flight2, flight3, flight4, flight5];
  //var flights = [flight1, flight2, flight3, flight4, flight5];
  */

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

  print("Actual Flight List");
  for (int idx = 0; idx < flights.length; idx++) {
    flights[idx].displayFlight();
  }

  print("##################################################");

  print("Sorted Flight List on Fare");

  bubbleSortOnDuration(flights, 1);

  for (int idx = 0; idx < flights.length; idx++) {
    flights[idx].displayFlight();
  }
}
