// /*
//   Flutter UI
//   ----------
//   lib/screens/simple_login.dart
// */
//
// import 'package:flutter/material.dart';
//
// class SimpleLoginScreen extends StatefulWidget {
//   /// Callback for when this form is submitted successfully. Parameters are (email, password)
//   final Function(String email, String password) onSubmitted;
//
//   SimpleLoginScreen({this.onSubmitted});
//   @override
//   _SimpleLoginScreenState createState() => _SimpleLoginScreenState();
// }
//
// class _SimpleLoginScreenState extends State<SimpleLoginScreen> {
//   String email, password;
//   String emailError, passwordError;
//   Function(String email, String password) get onSubmitted => widget.onSubmitted;
//
//   @override
//   void initState() {
//     super.initState();
//     email = "";
//     password = "";
//
//     emailError = null;
//     passwordError = null;
//   }
//
//   void resetErrorText() {
//     setState(() {
//       emailError = null;
//       passwordError = null;
//     });
//   }
//
//   bool validate() {
//     resetErrorText();
//
//     RegExp emailExp = RegExp(
//         r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
//
//     bool isValid = true;
//     if (email.isEmpty || !emailExp.hasMatch(email)) {
//       setState(() {
//         emailError = "Email is invalid";
//       });
//       isValid = false;
//     }
//
//     if (password.isEmpty) {
//       setState(() {
//         passwordError = "Please enter a password";
//       });
//       isValid = false;
//     }
//
//     return isValid;
//   }
//
//   void submit() {
//     if (validate()) {
//       if (onSubmitted != null) {
//         onSubmitted(email, password);
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: ListView(
//           children: [
//             SizedBox(height: screenHeight * .12),
//             Text(
//               "Welcome,",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: screenHeight * .01),
//             Text(
//               "Sign in to continue!",
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.black.withOpacity(.6),
//               ),
//             ),
//             SizedBox(height: screenHeight * .12),
//             InputField(
//               onChanged: (value) {
//                 setState(() {
//                   email = value;
//                 });
//               },
//               labelText: "Email",
//               errorText: emailError,
//               keyboardType: TextInputType.emailAddress,
//               textInputAction: TextInputAction.next,
//               autoFocus: true,
//             ),
//             SizedBox(height: screenHeight * .025),
//             InputField(
//               onChanged: (value) {
//                 setState(() {
//                   password = value;
//                 });
//               },
//               onSubmitted: (val) => submit(),
//               labelText: "Password",
//               errorText: passwordError,
//               obscureText: true,
//               textInputAction: TextInputAction.next,
//             ),
//             Align(
//               alignment: Alignment.centerRight,
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Forgot Password?",
//                   style: TextStyle(
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: screenHeight * .075,
//             ),
//             FormButton(
//               text: "Log In",
//               onPressed: submit,
//             ),
//             SizedBox(
//               height: screenHeight * .15,
//             ),
//             TextButton(
//               onPressed: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => SimpleRegisterScreen(),
//                 ),
//               ),
//               child: RichText(
//                 text: TextSpan(
//                   text: "I'm a new user, ",
//                   style: TextStyle(color: Colors.black),
//                   children: [
//                     TextSpan(
//                       text: "Sign Up",
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SimpleRegisterScreen extends StatefulWidget {
//   /// Callback for when this form is submitted successfully. Parameters are (email, password)
//   final Function(String email, String password) onSubmitted;
//
//   SimpleRegisterScreen({this.onSubmitted});
//
//   @override
//   _SimpleRegisterScreenState createState() => _SimpleRegisterScreenState();
// }
//
// class _SimpleRegisterScreenState extends State<SimpleRegisterScreen> {
//   String email, password, confirmPassword;
//   String emailError, passwordError;
//   Function(String email, String password) get onSubmitted => widget.onSubmitted;
//
//   @override
//   void initState() {
//     super.initState();
//     email = "";
//     password = "";
//     confirmPassword = "";
//
//     emailError = null;
//     passwordError = null;
//   }
//
//   void resetErrorText() {
//     setState(() {
//       emailError = null;
//       passwordError = null;
//     });
//   }
//
//   bool validate() {
//     resetErrorText();
//
//     RegExp emailExp = RegExp(
//         r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
//
//     bool isValid = true;
//     if (email.isEmpty || !emailExp.hasMatch(email)) {
//       setState(() {
//         emailError = "Email is invalid";
//       });
//       isValid = false;
//     }
//
//     if (password.isEmpty || confirmPassword.isEmpty) {
//       setState(() {
//         passwordError = "Please enter a password";
//       });
//       isValid = false;
//     }
//     if (password != confirmPassword) {
//       setState(() {
//         passwordError = "Passwords do not match";
//       });
//       isValid = false;
//     }
//
//     return isValid;
//   }
//
//   void submit() {
//     if (validate()) {
//       if (onSubmitted != null) {
//         onSubmitted(email, password);
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: ListView(
//           children: [
//             SizedBox(height: screenHeight * .12),
//             Text(
//               "Create Account,",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: screenHeight * .01),
//             Text(
//               "Sign up to get started!",
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.black.withOpacity(.6),
//               ),
//             ),
//             SizedBox(height: screenHeight * .12),
//             InputField(
//               onChanged: (value) {
//                 setState(() {
//                   email = value;
//                 });
//               },
//               labelText: "Email",
//               errorText: emailError,
//               keyboardType: TextInputType.emailAddress,
//               textInputAction: TextInputAction.next,
//               autoFocus: true,
//             ),
//             SizedBox(height: screenHeight * .025),
//             InputField(
//               onChanged: (value) {
//                 setState(() {
//                   password = value;
//                 });
//               },
//               labelText: "Password",
//               errorText: passwordError,
//               obscureText: true,
//               textInputAction: TextInputAction.next,
//             ),
//             SizedBox(height: screenHeight * .025),
//             InputField(
//               onChanged: (value) {
//                 setState(() {
//                   confirmPassword = value;
//                 });
//               },
//               onSubmitted: (value) => submit(),
//               labelText: "Confirm Password",
//               errorText: passwordError,
//               obscureText: true,
//               textInputAction: TextInputAction.done,
//             ),
//             SizedBox(
//               height: screenHeight * .075,
//             ),
//             FormButton(
//               text: "Sign Up",
//               onPressed: submit,
//             ),
//             SizedBox(
//               height: screenHeight * .125,
//             ),
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: RichText(
//                 text: TextSpan(
//                   text: "I'm already a member, ",
//                   style: TextStyle(color: Colors.black),
//                   children: [
//                     TextSpan(
//                       text: "Sign In",
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class FormButton extends StatelessWidget {
//   final String text;
//   final Function onPressed;
//   FormButton({this.text = "", this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//
//     return ElevatedButton(
//       onPressed: onPressed,
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 16),
//       ),
//       style: ElevatedButton.styleFrom(
//         padding: EdgeInsets.symmetric(vertical: screenHeight * .02),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//     );
//   }
// }
//
// class InputField extends StatelessWidget {
//   final String labelText;
//   final Function(String) onChanged;
//   final Function(String) onSubmitted;
//   final String errorText;
//   final TextInputType keyboardType;
//   final TextInputAction textInputAction;
//   final bool autoFocus;
//   final bool obscureText;
//   const InputField({
//     this.labelText,
//     this.onChanged,
//     this.onSubmitted,
//     this.errorText,
//     this.keyboardType,
//     this.textInputAction,
//     this.autoFocus = false,
//     this.obscureText = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       autofocus: autoFocus,
//       onChanged: onChanged,
//       onSubmitted: onSubmitted,
//       keyboardType: keyboardType,
//       textInputAction: textInputAction,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         labelText: labelText,
//         errorText: errorText,
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class SimpleLoginScreen extends StatefulWidget {
  @override
  _SimpleLoginScreenState createState() => _SimpleLoginScreenState();
}

class _SimpleLoginScreenState extends State<SimpleLoginScreen> {
  var name, email;
  //This method creates a collection named 'User', and adds two fields named 'Name' and 'Email'
  //Which are equal to variable name and email which stores data entered by the user
  // create()async {
  //   DocumentReference documentReference = await FirebaseFirestore.instance
  //       .collection("User").add({
  //     'Name':name,
  //     'Email':email,
  //   });
  // }
  create()async {
    //If you want your document id to be named instead of being randomly generated:
    //Use this:
    //Passing name as a parameter
    DocumentReference documentReference = await FirebaseFirestore.instance
        .collection("User").doc(name);
    documentReference.set({
      'Name':name,
      'Email':email,
    });
  }
  //Here, whatever is being passed as a parameter will de the document selected to update the value
  update()async {
    DocumentReference documentReference = await FirebaseFirestore.instance
        .collection("User").doc(name);
    documentReference.update({
      'Name':name,
      'Email':email,
    });
  }
  //The collection passed in the parameter will be deleted, together with it's fields.
  delete()async {
    DocumentReference documentReference = await FirebaseFirestore.instance
        .collection("User").doc(name);
    documentReference.delete();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (v) {
                  setState(() {
                    name = v;
                  });
                },
                decoration: InputDecoration(hintText: "Name"),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextField(
                  onChanged: (v) {
                    setState(() {
                      email = v;
                    });
                  },
                  decoration: InputDecoration(hintText: "Email"),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  create();
                },
                child: Text(
                  "Create",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>read()));
                },
                child: Text(
                  "Read",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  update();
                },
                child: Text(
                  "Update",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  delete();
                },
                child: Text(
                  "Delete",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
class read extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("User").snapshots(),
        // ignore: missing_return
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
          if(snapshot.hasData)
            {
              return ListView.builder(itemCount: snapshot.data.docs.length
                  ,itemBuilder: (context, i)
                  {
                    QueryDocumentSnapshot abc = snapshot.data.docs[i];
                      return Text(abc['Email']);
                  }
              );
            }
          return Center(child: CircularProgressIndicator(),);
        },
      ),
    );
    // return AlertDialog(
    //   title: const Text('AlertDialog Title'),
    //   content: SingleChildScrollView(
    //     child: ListBody(
    //       children: const <Widget>[
    //         Text('This is a demo alert dialog.'),
    //         Text('Would you like to approve of this message?'),
    //       ],
    //     ),
    //   ),
    // );
  }
}
