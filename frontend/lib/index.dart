import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/color.dart';
import 'package:http/http.dart' as http;

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  fetchUser() async {
    setState(() {
      isLoading = true;
    });
    var url = Uri.parse("https://kapvia.onrender.com/data");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = json.decode(response.body);
      var data = items['data'];

      setState(() {
        users = data;
        isLoading = false;
      });
    } else {
      setState(() {
        users = [];
        isLoading = false;
      });
    }
  }
  Future<void> refreshData() async {
    await fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing Users"),
      ),
      body: RefreshIndicator(
        onRefresh: refreshData,
        child: getBody(),
      ),
    );
  }

  Widget getBody() {
    if (users.isEmpty && !isLoading) {
      return Center(
        child: Text('No users found.'),
      );
    }
    else if (isLoading) {
      return Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(primary),
        ),
      );
    }
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return getCard(users[index]);
      },
    );
  }


  Widget getCard(Map<String, dynamic> user) {
    var title = user['title'];
    var description = user['description'];

    return Card(
      child: ListTile(
        title: Row(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  title[0].toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
