// ignore: file_names
import 'package:flutter/material.dart';
import 'package:quran_app/sura.dart';

class QuranDrawer extends StatelessWidget {
  final List<Sura> suras;

  const QuranDrawer({super.key, required this.suras});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: suras.length,
        itemBuilder: (BuildContext context, int index) {
          final sura = suras[index];
          return ListTile(
            title: Text(sura.name),
            onTap: () {
              Navigator.pop(context); // close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SuraPage(
                          sura: sura,
                        )),
              );
            },
          );
        },
      ),
    );
  }
}




































































// class Pages {

//   static const String _PREF_KEY_CURRENT_PAGE = 'current_page';

//   static Future<Database> _getDatabase() async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, 'quran.db');
//     return openDatabase(path, version: 1,
//         onCreate: (Database db, int version) async {
//       await db
//           .execute('CREATE TABLE pages (id INTEGER PRIMARY KEY, page INTEGER)');
//     });
//   }

//   static Future<int> getCurrentPage() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt(_PREF_KEY_CURRENT_PAGE) ?? 0;
//   }

//   static Future<void> setCurrentPage(int page) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setInt(_PREF_KEY_CURRENT_PAGE, page);
//     final db = await _getDatabase();
//     await db.insert('pages', {'page': page});
//   }
// }
