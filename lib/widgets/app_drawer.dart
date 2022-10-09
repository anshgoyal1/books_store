import 'package:book_store/screens/book_description.dart';
import 'package:book_store/screens/books_page.dart';
import 'package:book_store/screens/categories_page.dart';
import 'package:book_store/screens/homepage.dart';
import 'package:book_store/screens/search_page.dart';
import 'package:flutter/material.dart';

// typedef TitleCallback = void Function(String, int);
//Code for Appbar inside he app
class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}


class _AppDrawerState extends State<AppDrawer> {
  // navigateToPage(BuildContext context, String page) {
  //   Navigator.of(context)
  //       .pushNamedAndRemoveUntil(page, (Route<dynamic> route) => false);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Bookstore'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Ansh'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Bookstores'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => BooksPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Book Depository'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CategoriesPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Blackwell's Books"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => BookDescription()));
            },
          ),
          Text("App"),
          ListTile(
            leading: Icon(Icons.local_shipping),
            title: Text('Free shpping'),
          ),
          ListTile(
            leading: Icon(Icons.discord_outlined),
            title: Text('Special offers'),
          ),
          ListTile(
            leading: Icon(Icons.library_books_outlined),
            title: Text('Reading lists'),
          ),
          ListTile(
            leading: Icon(Icons.tag),
            title: Text('Bestsellers'),
          ),
          ListTile(
            leading: Icon(Icons.lock_clock),
            title: Text('Comming soon'),
          ),
          ListTile(
            leading: Icon(Icons.question_mark_rounded),
            title: Text('FAQ'),
          ),
          ListTile(
            leading: Icon(Icons.pageview),
            title: Text('Full list of categories'),
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Advanced search'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shield),
            title: Text('Privacy policy'),
          ),
        ],
      ),
    );
  }
}
