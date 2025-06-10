    /*
        A simple Library Management System in Dart.

        Features:
        - View available books
        - Add new books
        - Delete books
        - Chat with a basic librarian bot

        Data is persisted in a local text file.

        Usage:
        - Run the program and follow the menu prompts in the console.
        - Books are stored as a comma-separated list in `library.txt`.

        Author: Gaurav Joshi
    */
    import 'dart:io';

    void main() {
        int flag=0;
        while (flag!=1)
        {
        itemFromFile();
        try{
        print("\n\nEnter your action:\n1) View Books\n2) Update Books\n3) Delete Books\n4) Talk to Librarian\n5) Exit");
        int action=int.parse(stdin.readLineSync()??'1');
        switch (action)
        {
            case 1:
                print("Available Books:");
                viewBooks().forEach(print);
                break;
            case 2:
                updateBooks();
                itemFromFile();
                viewBooks().forEach(print);
                break;
            case 3:
                deleteBooks();
                itemFromFile();
                viewBooks().forEach(print);
                break;
            case 4:
                itemFromFile();
                String? user=stdin.readLineSync()??"Hello";
                print(chatBot(user.replaceFirst(user[0], user[0].toUpperCase())));
                break;
            case 5:
                flag=1;
            default:
                print("Enter something from options");
        }}

        catch(error){
            print("Something went wrong :< $error");
        }
    }
    }
    // Global Variables
    Map<String, dynamic> script={"Hello": "Hello sir, How can I help you?",
    "Thank you": "It's our pleasure :)"};
    Set<dynamic> books={};
    String path=r"C:\Users\Gaurav Joshi\Documents\Dart\Dart\library.txt";

    void itemFromFile()
    {
        final file=File(r"C:\Users\Gaurav Joshi\Documents\Dart\Dart\library.txt");
        String content=file.readAsStringSync();
        books.addAll(content.split(","));
    }


    dynamic viewBooks(){
        // books.addAll(["The Great Gatsby", "1984", "To Kill a Mockingbird", "Pride and Prejudice"]);
        return books;
    }

    void updateBooks()
    {
        print("Enter book name: ");
        String book=stdin.readLineSync()!;
        final file=File(path);
        file.writeAsStringSync(",${book.replaceFirst(book[0], book[0].toUpperCase())}", mode:FileMode.append);
        print("$book is added to the library");
    }

    void deleteBooks()
    {
        print("Enter book name: ");
        String book=stdin.readLineSync()!;
        String bookParsed=book.replaceFirst(book[0], book[0].toUpperCase());
        if (books.contains(bookParsed))
        {
            final file=File(path);
            books.remove(bookParsed);
            file.writeAsStringSync(books.join(','));
            print("$book is deleted");
        }
    }

    dynamic chatBot(String user)
    {
        if (books.contains(user))
        {
            return "$user is available. Would you like to make a Purchase?";
        }
        else{
        return script[user];
        }
    }