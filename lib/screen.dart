import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'info.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final UserController userController = Get.put(UserController());
  final TextEditingController ageController = TextEditingController();
  //String? ageGroup;
  String ageGroup = "common";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -260, // Adjust this value as needed
            child: Image(
              image: AssetImage("assets/images/pic.jpg"),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -0.7),
                  end: Alignment(0.0, 0.1),
                  colors: [Color(0x00e7e7e7), Color(0xffe7e7e7)],
                ),
              ),
            ),
          ),
          Positioned(
            top: 200.0, // Adjust position as needed
            left: 10.0, // Adjust position as needed
            right: 10.0,
            bottom: 10, // Adjust position as needed
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              //padding: EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),

                  Text(
                    'b l o o d  s u g a r  m o n i t o r',
                    style: GoogleFonts.comfortaa(
                      textStyle: TextStyle(
                        fontSize: 17,
                        color: Color(0xff272727),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8), // Add spacing between text and rectangle
                  Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFA6C8FB), Color(0xFF7174DF)],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Select Your Status:',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xff272727),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'healthy',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0xff272727),
                              ),
                            ),
                          ),
                          Radio(
                            value: 'common',
                            groupValue: ageGroup,
                            onChanged: (value) {
                              setState(() {
                                ageGroup = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'children',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0xff272727),
                              ),
                            ),
                          ),
                          Radio(
                            value: 'children',
                            groupValue: ageGroup,
                            onChanged: (value) {
                              setState(() {
                                ageGroup = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'adults',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0xff272727),
                              ),
                            ),
                          ),
                          Radio(
                            value: 'adults',
                            groupValue: ageGroup,
                            onChanged: (value) {
                              setState(() {
                                ageGroup = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'pregnant',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0xff272727),
                              ),
                            ),
                          ),
                          Radio(
                            value: 'pregnant',
                            groupValue: ageGroup,
                            onChanged: (value) {
                              setState(() {
                                ageGroup = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'older',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 15,
                                color: Color(0xff272727),
                              ),
                            ),
                          ),
                          Radio(
                            value: 'older',
                            groupValue: ageGroup,
                            onChanged: (value) {
                              setState(() {
                                ageGroup = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  Text(
                    'Glucose Value Before meals (fasting)',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xff272727),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: 150,
                    height: 40,
                    child: TextFormField(
                      controller: userController.controller1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Color(0xffffffff),
                        suffix: Text('mg/dL'),
                        labelText: 'Enter the value',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (value) =>
                          userController.validateInput1(value),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Glucose Value After meals',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xff272727),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: 150,
                    height: 40,
                    child: TextFormField(
                      controller: userController.controller2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter the value',
                        suffix: Text('mg/dL'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      validator: (value) =>
                          userController.validateInput2(value),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Other Glucose Values',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xff272727),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: 150,
                    height: 40,
                    child: TextFormField(
                      controller: userController.controller3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter the value',
                        suffix: Text('mg/dL'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      //validator: (value) =>
                      //userController.validateInput3(value),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFA6C8FB), Color(0xFF7174DF)],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        String? validationError1 = userController
                            .validateInput1(userController.controller1.text);
                        String? validationError2 = userController
                            .validateInput2(userController.controller2.text);
                        if (validationError1 != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(validationError1 ?? ''),
                              backgroundColor: Color(0xFF7174DF),
                            ),
                          );
                        } else if (validationError2 != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(validationError2 ?? ''),
                              backgroundColor: Color(0xFF7174DF),
                            ),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NextPage(
                                num1: userController.controller1.text,
                                num2: userController.controller2.text,
                                num3: userController.controller3.text,
                                ageGroup: ageGroup!,
                              ),
                            ),
                          );
                        } else {
                          userController.submitForm();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NextPage(
                                num1: userController.controller1.text,
                                num2: userController.controller2.text,
                                num3: userController.controller3.text,
                                ageGroup: ageGroup!,
                              ),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0x008e8e8e),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'S U B M I T',
                        style: GoogleFonts.comfortaa(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: 160,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NextPage(
                              num1: userController.controller1.text,
                              num2: userController.controller2.text,
                              num3: userController.controller3.text,
                              ageGroup: ageGroup!,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0x008e8e8e),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                        elevation: 0,
                        shadowColor: Color(0x00ffffff),
                      ),
                      child: Text(
                        'S H O W  I N F O',
                        style: GoogleFonts.comfortaa(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202020),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserController extends GetxController {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  @override
  void onClose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    super.onClose();
  }

  void submitForm() {
    // Your form submission logic here
  }

  String? validateInput1(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a value';
    } else {
      double? parsedValue = double.tryParse(value);
      if (parsedValue == null) {
        return 'Please enter a valid number';
      } else {
        if (parsedValue <= 70) {
          return 'Enter a number greater than 70';
        } else if (parsedValue >= 1000) {
          return 'Enter a number less than 1000';
        }
      }
    }
    return null;
  }

  String? validateInput2(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a value';
    } else {
      double? parsedValue = double.tryParse(value);
      if (parsedValue == null) {
        return 'Please enter a valid number';
      } else {
        if (parsedValue <= 70) {
          return 'Enter a number greater than 70';
        } else if (parsedValue >= 1000) {
          return 'Enter a number less than 1000';
        }
      }
    }
    return null;
  }
}

class NextPage extends StatelessWidget {
  final String num1;
  final String num2;
  final String num3;
  final String ageGroup;

  NextPage(
      {required this.num1,
      required this.num2,
      required this.num3,
      required this.ageGroup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff3b3b3b)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'i n f o  p a g e',
          style: GoogleFonts.comfortaa(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff202020),
            ),
          ),
        ),
      ),
      body: MyInfo(num1: num1, num2: num2, num3: num3, ageGroup: ageGroup),
    );
  }
}
