part of 'pages.dart';

///Menampilkan profile user
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  /// Variabel untuk checkBox
  bool mentor = false;
  bool needMentor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Profile'),
        ),
        backgroundColor: Colors.purple,
        actions: [Icon(Icons.settings)],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    color: Colors.purple,
                    width: 100.0,
                    height: 100.0,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Center(child: Text("Barpik Parcia")),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Username', hintText: 'Username'),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration:
                      InputDecoration(labelText: 'Email', hintText: 'Email'),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Available to mentor"),
                    Checkbox(
                        value: mentor,
                        onChanged: (bool value) {
                          setState(() {
                            mentor = value;
                          });
                        }),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Needs mentoring"),
                    Checkbox(
                        value: needMentor,
                        onChanged: (bool value) {
                          setState(() {
                            needMentor = value;
                          });
                        }),
                  ],
                ),
                SizedBox(height: 10),
                TextField(
                  decoration:
                      InputDecoration(labelText: 'Bio', hintText: 'Bio'),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Slack username', hintText: 'Slack username'),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Location', hintText: 'Location'),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Occupation', hintText: 'Occupation'),
                ),
              ],
            ),
            RaisedButton(
              onPressed: () {
                Get.to(RegisterPage());
              },
              child: Text("Register"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
