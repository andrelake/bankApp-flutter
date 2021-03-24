import 'package:flutter/material.dart';
import 'package:lakebank_flutter/components/inputText.component.dart';
import 'package:lakebank_flutter/models/user.dart';
import 'package:lakebank_flutter/screens/transfer-list.screen.dart';

const _usernameLabel = 'Username';
const _usernameHint = 'john_doe';
const _passwordLabel = 'Password';
const _passwordHint = '123456';


class LoginScreen extends StatefulWidget {
  final List<User> _userlist = [
    User('John', 'Doe', 'john_doe', '123456'),
    User('Mark', 'Jenkins', 'mark_j', '999999'),
  ];

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).copyWith().size.height / 4,),
            Image(
                image: AssetImage('lib/assets/bank.png')
            ),
            SizedBox(height: MediaQuery.of(context).copyWith().size.height / 8,),
            InputText(
              controller: _usernameController,
              label: _usernameLabel,
              hint: _usernameHint,
              inputType: TextInputType.text,
            ),
            InputText(
              controller: _passwordController,
              label: _passwordLabel,
              hint: _passwordHint,
              isObscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo)
                ),
                child: Text('Enter'),
                onPressed: (){
                  String username = _usernameController.text;
                  String password = _passwordController.text;
                  if(username!=null && password!=null) {
                  widget._userlist.forEach((user) {
                    if(user.username==username && user.password==password){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){ return TransferList(); })
                      );
                    }
                  });
                }
              }, ),
            )
          ],
        ),
      ),
    );
  }
}
