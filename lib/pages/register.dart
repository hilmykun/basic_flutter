part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  ///Variavel untuk menampilkan password
  bool _isHidePassword = true;
  bool mentor = false;
  bool mentor1 = false;
  bool term = false;

  ///Inisialisasi Jika icon ditekan
  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Register"),
        actions: [
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Container(
                  child: Text("SIGN UP",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Name",
                      labelText: "Name"),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Username",
                      labelText: "Username"),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      labelText: "Email"),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: _isHidePassword,
                  autofocus: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _togglePasswordVisibility();
                        },
                        child: Icon(
                          _isHidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _isHidePassword ? Colors.grey : Colors.blue,
                        ),
                      ),
                      hintText: "Enter Password",
                      labelText: "Enter Password"),
                ),
                SizedBox(height: 15),
                TextField(
                  obscureText: _isHidePassword,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _togglePasswordVisibility();
                        },
                        child: Icon(
                          _isHidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _isHidePassword ? Colors.grey : Colors.blue,
                        ),
                      ),
                      hintText: "Confirm Password",
                      labelText: "Confirm Password"),
                ),
                SizedBox(height: 5),
                Container(
                  child: Center(child: Text("Available to be a :")),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: mentor,
                        onChanged: (bool value) {
                          setState(() {
                            mentor = value;
                          });
                        }),
                    Text("Mentor"),
                    Checkbox(
                        value: mentor1,
                        onChanged: (bool value) {
                          setState(() {
                            mentor1 = value;
                          });
                        }),
                    Text("Mentee"),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: term,
                          onChanged: (bool value) {
                            setState(() {
                              term = value;
                            });
                          }),
                      Flexible(
                        child: Text(
                            "I affirm that i have read and accept to be bound\nby the AnitaB.org Code of conduct, Terms \n and Privacy policy Further i consent to use of my \n information for the started purpose"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 30,
                  child: RaisedButton(
                    onPressed: () {
                      Get.to(ProfilePage());
                    },
                    child: Text("Sign Up"),
                    color: Colors.blue,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
