import 'package:flutter/material.dart';

// import '../widgets/app_bottom_navigation_bar.dart';
//imported all widgets
import '../widgets/app_drawer.dart';
import '../widgets/card_tile.dart';
import '../widgets/categories_list.dart';
import '../widgets/text_button.dart';
import '../widgets/text_field_input.dart';
import '../widgets/tile_row.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({ Key? key }) : super(key: key);

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bookstores',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        elevation: 12.0,
        primary: true,
        
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer:  AppDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          TextFieldInput(
            hintText: 'Enter keywords, title, author or ISBN',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200.0),
            child: Row(
              children: [
                TextButtonWidget(
                  iconData: Icons.book,
                  name: "Book depository",
                  color: Colors.blue,
                ),
                TextButtonWidget(
                  iconData: Icons.library_books,
                  name: "BlackWells books",
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Bookstores: free shipping',
              style: TextStyle(
                  backgroundColor: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Card(
          color: Colors.black,
          borderOnForeground: true,
          elevation: 8.0,
          child: Center(
            child: Text(
              "Book Depository",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),

        Card(
          color: Colors.black,
          borderOnForeground: true,
          elevation: 8.0,
          child: Center(
            child: Text(
              "Blackwells books",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Card(
          color: Colors.black,
          borderOnForeground: true,
          elevation: 8.0,
          child: Center(
            child: Text(
              "Better world books",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Card(
          color: Colors.black,
          borderOnForeground: true,
          elevation: 8.0,
          child: Center(
            child: Text(
              "Fishpond.com",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Card(
          color: Colors.black,
          borderOnForeground: true,
          elevation: 8.0,
          child: Center(
            child: Text(
              "Wordery",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),

          SizedBox(
            height: 20.0,
          ),
          
          Center(
            child: Text(
              'Book categories',
              style: TextStyle(
                  backgroundColor: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),

          CategoriesList(),
          SizedBox(
            height: 50.0,
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text("Designed By Ansh Goyal ")),
          ),
        ],
      ),
      // bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
