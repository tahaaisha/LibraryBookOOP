class Book {
  String title;
  String author;
  Book(this.title, this.author);
}

class Member {
  String name;
  String membershipnumber;
  List<Book> borrowedBook = [];
  Member(this.name, this.membershipnumber);

  void borrowbook(Book book) {
    borrowedBook.add(book);
    print('$name borrowed ${book.title} book auther is ${book.author}');
  }

  void returnbook(Book book) {
    if (borrowedBook.remove(book)) {
      print('$name returned ${book.title}');
    } else {
      print('$name didnt borrow ${book.title}');
    }
  }

  void printmemberinfo() {
    print('member:$name,membership number:$membershipnumber');
    if (borrowedBook.isEmpty) {
      print('no book borrowed');
    } else {
      print('borrowed book');
      for (var book in borrowedBook) {
        print('bookname is:${book.title} book auther${book.author}');
      }
    }
  }
}

void main() {
  Book book1 = Book('Ardzekola', 'ali mohamed');
  Book book2 = Book('prophet stories', 'noha ahmed');
  Book book3 = Book('childen joks', 'aisha taha');

  Member aisha = Member('aisha', '187');
  Member hend = Member('hend', '234');
  Member noor = Member('noor', '234');

  aisha.borrowbook(book1);
  hend.borrowbook(book2);

  aisha.printmemberinfo();
  hend.printmemberinfo();
  noor.printmemberinfo();

  aisha.returnbook(book3);
  hend.returnbook(book2);
}
