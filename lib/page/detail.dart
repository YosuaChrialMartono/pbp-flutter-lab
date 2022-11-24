import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/form_budget.dart';
import 'package:counter_7/page/data_budget.dart';
import 'package:counter_7/page/watchlist_page.dart';
import 'package:counter_7/main.dart';
import 'package:intl/intl.dart';

class MyDetailPage extends StatefulWidget {
  const MyDetailPage({super.key, required this.modelWatchList});
  final Watchlist modelWatchList;

  @override
  State<MyDetailPage> createState() => _MyDetailPageState(modelWatchList);
}

class _MyDetailPageState extends State<MyDetailPage> {
  Watchlist model;
  _MyDetailPageState(this.model);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ), // Menambahkan drawer menu
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke counter
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form tambah budget
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman data budget
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watch List'),
              onTap: () {
                // Route menu ke halaman data budget
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyWatchListPage()),
                );
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                model.fields.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
            child: Row(
              children: [
                const Text(
                  "Release Date: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  DateFormat.yMMMd().format(model.fields.releaseDate),
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
            child: Row(
              children: [
                const Text(
                  "Rating: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  '${model.fields.rating} / 10',
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
            child: Row(
              children: [
                const Text(
                  "Status: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  model.fields.watched ? "Watched" : "Not Watched",
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
            child: Row(
              children: [
                const Text(
                  "Review: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
              child: Row(
                children: [Text(model.fields.review)],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              padding:
                  const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4)),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size.fromHeight(40.0),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
