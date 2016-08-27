// var parrots = ["parrotlet", "conure", "macaw"];
// console.log(parrots[0]);
// parrots.push("cockatiel");
// console.log(parrots);
//
// var books = [
//   {title: "The North Water", author: "Ian McGuire", isbn: "3445678901", year: 2016},
//   {title: "Homegoing", author: "Yaa Gyasi", isbn: "2345678910", year: 2016},
//   {title: "Girl At War", author: "Sara Novic", isbn: "7685940387", year: 2015},
// ];
// console.log(books)
//
// var newBook = {title: "Emperor of the Eight Islands", author: "Lian Hearn", isnb: "4456783219", year: 2016};
// books.push(newBook);
// console.log(books);
//
// // 2 ways of doing the same thing: getting the title from one member of the array
// console.log(books[3].title);
// console.log(books[3]["title"]);
//
// var words = ["apple", "banana", "carrot", "date", "escarole", "fig", "gourd", "hmm", "igloo", "jam", "kazoo", "lamp", "mouse"];
// for (var i = 0; i < words.length; i++) {
//   console.log(words[i]);
// }
//


// COUNTDOWN
// var i = 10;
// while (i > 0) {
//   console.log(i);
//   i --;
// }
// console.log("BLASTOFF!");


// PRINT ARRAY
// var numbers = [5, 23, 98, 234, 1, 0, 3, 177];
// for (var i = 0; i < numbers.length; i++) {
//   console.log(numbers[i]);
// }


// AVERAGE
// var numbers = [5, 23, 98, 234, 1, 0, 3, 177];
// var sum = 0;
// for (var i = 0; i < numbers.length; i++) {
//   sum = sum + numbers[i];
// }
// console.log(sum / numbers.length);

//
// FIZZBUZZ
// for (var i = 0; i <= 100; i++) {
//   if (i % 3 === 0 && i % 5 === 0){
//     console.log("FizzBuzz");
//   }
//   else if (i % 3 === 0) {
//     console.log("Fizz");
//   }
//   else if (i % 5 === 0) {
//     console.log("Buzz");
//   }
//   else {
//      console.log(i);
//   }
// }


// FUNCTION THAT ADDS 2 NUMBERS
// function addTwoNumbers(numOne, numTwo) {
//   return numOne + numTwo;
// }
// console.log(addTwoNumbers(3, 14));


// FUNTION TO AVERAGE AN ARRAY
// function averageArray(numbers) {
//   var sum = 0;
//   for (var i = 0; i < numbers.length; i++) {
//    sum = sum + numbers[i];
//  }
//  return sum / numbers.length;
// }
// console.log(averageArray([5, 23, 98, 234, 1, 0, 3, 177]));


// BOOK INFO FUNCTION
var book1 = {
  title: "The North Water",
  author: "Ian McGuire",
  isbn: "3445678901",
  pages: 255,
  year: 2016,
  bookInfo: function() {
    console.log(this.title + " is also an awesome book about whaling!");
  }
};
book1.bookInfo();


// BOOK CONSTRUCTOR
function Book(title, author, pages, isbn, year) {
  this.title = title;
  this.author = author;
  this.pages = pages;
  this.isbn = isbn;
  this.year = year;
  this.printReview = function() {
    return this.title + " is the best book ever!";
  };
}

var mobyDick = new Book("Moby-Dick", "Herman Melville", 704, "0553213113", "1851");

console.log(mobyDick.title);
console.log(mobyDick.author);
console.log(mobyDick.printReview());
