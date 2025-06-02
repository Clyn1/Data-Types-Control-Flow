void main() {
  // 1. Define Variables
  int age = 25;
  double height = 5.9;
  String name = "Clyn";
  bool isStudent = true;
  List<int> scores = [90, 85, 70, 100];

  print("== Variables ==");
  print("Age: $age");
  print("Height: $height");
  print("Name: $name");
  print("Is Student: $isStudent");
  print("Scores: $scores");
  print("");

  // 2. Type Conversion
  String strNum = "42";
  int parsedInt = stringToInt(strNum);
  double parsedDouble = stringToDouble(strNum);

  int intValue = 100;
  String intToStr = intToString(intValue);
  double intToDbl = intToDouble(intValue);

  print("== Type Conversion ==");
  print("String to Int: $parsedInt");
  print("String to Double: $parsedDouble");
  print("Int to String: $intToStr");
  print("Int to Double: $intToDbl");
  print("");

  // 3. Convert and Display Function
  print("== Convert and Display ==");
  convertAndDisplay("77");
  print("");

  // 4. Control Flow
  print("== Control Flow ==");

  print("- If-Else: Check number -");
  checkNumber(5);
  checkNumber(-3);
  checkNumber(0);

  print("\n- If-Else: Voting Eligibility -");
  checkVotingEligibility(17);
  checkVotingEligibility(19);

  print("\n- Switch Case: Day of the Week -");
  printDay(3);
  printDay(7);
  printDay(9); // invalid

  print("\n- Loops -");
  print("For loop (1 to 10):");
  printOneToTen();

  print("\nWhile loop (10 to 1):");
  printTenToOne();

  print("\nDo-While loop (1 to 5):");
  printOneToFive();

  // 5. Combine Data & Control Flow
  print("\n== List Analysis ==");
  List<int> data = [3, 15, 150, 7];
  analyzeList(data);
}

// ==== Functions ====

// Type Conversion Functions
int stringToInt(String value) => int.parse(value);
double stringToDouble(String value) => double.parse(value);
String intToString(int value) => value.toString();
double intToDouble(int value) => value.toDouble();

// Convert and Display Function
void convertAndDisplay(String number) {
  int intValue = int.parse(number);
  double doubleValue = double.parse(number);

  print("Integer value: $intValue");
  print("Double value: $doubleValue");
}

// If-Else Functions
void checkNumber(int number) {
  if (number > 0) {
    print("$number is Positive");
  } else if (number < 0) {
    print("$number is Negative");
  } else {
    print("$number is Zero");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Age $age: Eligible to vote.");
  } else {
    print("Age $age: Not eligible to vote.");
  }
}

// Switch Case Function
void printDay(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

// Loop Functions
void printOneToTen() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void printTenToOne() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void printOneToFive() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Combine Data & Control Flow
void analyzeList(List<int> numbers) {
  for (int number in numbers) {
    print("Number: $number");

    if (number % 2 == 0) {
      print("Even");
    } else {
      print("Odd");
    }

    switch (true) {
      case true when number >= 1 && number <= 10:
        print("Small");
        break;
      case true when number >= 11 && number <= 100:
        print("Medium");
        break;
      case true when number > 100:
        print("Large");
        break;
      default:
        print("Out of range");
    }

    print(""); // spacing
  }
}
