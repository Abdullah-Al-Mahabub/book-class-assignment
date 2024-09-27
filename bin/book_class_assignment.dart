class Book {
  static int totalBooks = 0;  // static property keeps track total book
  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear){
    totalBooks++;  // Add a new Book when object is created
  }

  /* A method that takes an integer parameter
  representing the number of pages read and
  adds it to the `pagesRead` property. */

  void read(int pages) {
    pagesRead += pages;
  }
  // A method that returns the value of the `pagesRead` property.
  int getPagesRead() {
    return pagesRead;
  }
  // A method that returns the value of the `title` property
  String getTitle() {
    return title;
  }
  // A method that returns the value of the `author` property.
  String getAuthor() {
    return author;
  }
  // A method that returns the value of the `publicationYear` property.
  int getPublicationYear() {
    return publicationYear;
  }
/* A method that calculates and returns
the age of the book by subtracting
the `publicationYear` from the current year.*/
  int getBookAge() {
    int currentYear = DateTime.now().year;  // Get the current year
    return currentYear - publicationYear;  // Calculate book age
  }
}

void main() {
  // Created three `Book` objects with different titles, authors, and publication years.
  Book bookObj1 = Book("Himu", "Humayun Ahmed", 1993);
  Book bookObj2 = Book("Romeo and Juliet", "William Shakespeare", 1597);
  Book bookObj3 = Book("A Game of Thrones", "George R.R. Martin", 1996);

  // Method to simulate reading a different number of pages for each book.
  bookObj1.read(240);
  bookObj2.read(134);
  bookObj3.read(32);

  // Print details for each book
  for (Book bookObj in [bookObj1, bookObj2, bookObj3]) {
    print('Title: ${bookObj.getTitle()}');
    print('Author: ${bookObj.getAuthor()}');
    print('Publication Year: ${bookObj.getPublicationYear()}');
    print('Pages Read: ${bookObj.getPagesRead()}');
    print('Book Age: ${bookObj.getBookAge()} years\n');
  }

  // Print total number of books
  print('Total number of Books: ${Book.totalBooks}');
}