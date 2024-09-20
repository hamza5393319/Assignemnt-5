//-----------------------------Q1-----------------------------//

// import 'dart:io';

// void main(){
//   print("Enter Your Age");
//   String input =stdin.readLineSync()!;
  
//   if(input == null || input.isEmpty){
//     print("Invalid Input: Input is empty. Try again");
//     return;
//   }

//   int? age = int.parse(input);
//   if( age < 0 ){
//     print(" Age should be a positive number. Try again");
    
//   }

//  if (age < 13) {
//     print("You are a Child.");
//   } else if (age >= 13 && age <= 19) {
//     print("You are a Teenager.");
//   } else if (age >= 20 && age <= 59) {
//     print("You are an Adult.");
//   } else {
//     print("You are a Senior.");
//   }
   

// }

//-----------------------------Q2-----------------------------//

// void main() {
//   List<int> numbers = [12, 7, 9, 8, 10, 15, 4, 2, 20, 5];
   
//   List <int> evenNumbers = [];
//   List <int> oddNumbers = [];
   
//    int sumOfEvenNumber = 0;
//    int sumOfOddNumber = 0;

//    for(int number in numbers){
//     if(number % 2 == 0){
//       evenNumbers.add(number);
//       sumOfEvenNumber += number;
//     }
//     else{
//       oddNumbers.add(number);
//       sumOfOddNumber += number;
//     } 
//    }

//    print("Even Numbers: $evenNumbers");
//    print("The Sum Of Even Numbers: $sumOfEvenNumber");

//   print("Odd Numbers: $oddNumbers");
//    print("The Sum Of Odd Numbers: $sumOfOddNumber");
   
// }

//-----------------------------Q3-----------------------------//

// import 'dart:io';

// void main() {
//   Map<String, double> products = {};


//   for (var i = 0; i < 5; i++) {
//     print("Enter Product Name:");
//     String? productName = stdin.readLineSync();

//     print("Enter Price of $productName:");
//     double? price = double.parse(stdin.readLineSync()!);

//     products[productName!] = price;
//   }

//   print("Enter a price threshold:");
//   double? threshold = double.parse(stdin.readLineSync()!);

//   print("\nAll Products with their Prices:");
//   products.forEach((key, value) {
//     print("$key: PKR$value");
//   });

//   print("\nProducts with price greater than PKR$threshold:");
//   products.forEach((key, value) {
//     if (value > threshold) {
//       print("$key: PKR$value");
//     }
//   });
// }

//-----------------------------Library managment system  self task-----------------------------//
// import 'dart:io';

// void main() {
//   List<Map<String, dynamic>> library = [
//   {'title': 'Book 1', 'author': 'Author 1', 'isBorrowed': false},
//   {'title': 'Book 2', 'author': 'Author 2', 'isBorrowed': false},
//   {'title': 'Book 3', 'author': 'Author 3', 'isBorrowed': false}
//   ];
  
//   while (true) {
//     print("\nLibrary Management System:");
//     print("1. Add a Book");
//     print("2. View All Books");
//     print("3. Search for a Book");
//     print("4. Borrow a Book");
//     print("5. Return a Book");
//     print("6. Exit");

//     print("Enter your choice (1-6): ");
//     int? choice = int.parse(stdin.readLineSync()!);

//     if (choice == 1) {
//       print("Enter the book title:");
//       String title = stdin.readLineSync()!;
//       print("Enter the book author:");
//       String author = stdin.readLineSync()!;
      
//       library.add({"title": title, "author": author, "isBorrowed": false});
//       print("Book '$title' by $author added to the library.");
      
//     } else if (choice == 2) {
//       if (library.isEmpty) {
//         print("No books available in the library.");
//       } else {
//         print("\nAvailable Books:");
//         for (var book in library) {
//           String status = book["isBorrowed"] ? "Borrowed" : "Available";
//           print("${book['title']} by ${book['author']} - $status");
//         }
//       }
      
//     } else if (choice == 3) {
//       print("Enter the book title to search:");
//       String searchTitle = stdin.readLineSync()!;
      
//       bool found = false;
//       for (var book in library) {
//         if (book["title"].toLowerCase() == searchTitle.toLowerCase()) {
//           String status = book["isBorrowed"] ? "Borrowed" : "Available";
//           print("${book['title']} by ${book['author']} - $status");
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         print("Book not found.");
//       }
      
//     } else if (choice == 4) {
//       print("Enter the title of the book you want to borrow:");
//       String borrowTitle = stdin.readLineSync()!;
      
//       bool found = false;
//       for (var book in library) {
//         if (book["title"].toLowerCase() == borrowTitle.toLowerCase()) {
//           if (!book["isBorrowed"]) {
//             book["isBorrowed"] = true;
//             print("You have borrowed '${book['title']}' by ${book['author']}.");
//           } else {
//             print("The book is currently borrowed.");
//           }
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         print("Book not found.");
//       }
      
//     } else if (choice == 5) {
//       print("Enter the title of the book you want to return:");
//       String returnTitle = stdin.readLineSync()!;
      
//       bool found = false;
//       for (var book in library) {
//         if (book["title"].toLowerCase() == returnTitle.toLowerCase()) {
//           if (book["isBorrowed"]) {
//             book["isBorrowed"] = false;
//             print("You have returned '${book['title']}' by ${book['author']}.");
//           } else {
//             print("The book was not borrowed.");
//           }
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         print("Book not found.");
//       }
      
//     } else if (choice == 6) {
//       print("Exiting the Library Management System.");
//       break;
      
//     } else {
//       print("Invalid choice, please select a valid option.");
//     }
//   }
// }
