import 'package:flutter/material.dart';
import 'package:test_1/listview.dart';

class NewScreen extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  var name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('First Screen'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, ${_controller.text}'),
                      );
                    });
              },
              child: Text(
                'Submit',
                style: TextStyle(fontFamily: 'Oswald', fontSize: 20),
              ),
            ),
            ElevatedButton(
              child: Text(
                'ListView',
                style: TextStyle(fontSize: 24.0),
              ),
              onPressed: () {
                _navigateToNextScreen(context);
              },
            ),
            Image.network(
              'https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI',
              width: 200,
              height: 200,
            ),
            Image.asset(
              'images/ERD.jpg',
              width: 200,
              height: 200,
            )
          ],
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ListViewScreen()));
  }
}
