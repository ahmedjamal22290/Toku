import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku_by_me/custom_widgets/recently_widget.dart';
import 'package:toku_by_me/modules/recentDataInTrans.dart';
import 'package:translator/translator.dart';

class transltionPage extends StatefulWidget {
  const transltionPage({super.key});

  @override
  State<transltionPage> createState() => _transltionPageState();
}

class _transltionPageState extends State<transltionPage> {
  var languages = ['Japines', 'English', 'Arabic'];
  var orignalLanguage = 'From';
  var destinationLanguage = 'To';
  var output = '';
  TextEditingController languageController = TextEditingController();
  var transltion;
  void translate(String src, String dest, String input) async {
    GoogleTranslator translator = new GoogleTranslator();
    transltion = await translator.translate(input, from: src, to: dest);
    setState(() {
      output = transltion.text.toString();
      recentData(
        ogLangu: languageController.text.toString(),
        desLangu: transltion.text.toString(),
      );
    });
    if (src == '--' || dest == '--') {
      output = 'Fail To Translate';
    }
  }

  String getLanguageCode(String langu) {
    if (langu == 'English')
      return 'en';
    else if (langu == 'Japines')
      return 'ja';
    else if (langu == 'Arabic')
      return 'ar';
    else
      return '--';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(110, 2, 48, 71),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff023047),
        title: Text(
          'Translator',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    focusColor: Colors.white,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    hint: Text(
                      orignalLanguage,
                      style: TextStyle(color: Colors.white),
                    ),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: languages.map((String dropDownStringItem) {
                      return DropdownMenuItem(
                        child: Text(dropDownStringItem),
                        value: dropDownStringItem,
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        orignalLanguage = value!;
                      });
                    },
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (orignalLanguage != 'From' &&
                            destinationLanguage != 'To') {
                          String tmp = orignalLanguage;
                          orignalLanguage = destinationLanguage;
                          destinationLanguage = tmp;
                        }
                      });
                    },
                    icon: Image.asset(
                      'assets/images/arrows.png',
                      scale: 42,
                    ),
                    color: Colors.white,
                    // style: IconButton.styleFrom(iconSize: 100),
                  ),
                  SizedBox(width: 40),
                  DropdownButton(
                    focusColor: Colors.white,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    hint: Text(
                      destinationLanguage,
                      style: TextStyle(color: Colors.white),
                    ),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: languages.map((String dropDownStringItem) {
                      return DropdownMenuItem(
                        child: Text(dropDownStringItem),
                        value: dropDownStringItem,
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        destinationLanguage = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                  cursorColor: Colors.white,
                  autofocus: false,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Plase Entre Your Text..',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                  controller: languageController,
                  validator: (value) {
                    return value == null || value.isEmpty
                        ? 'Please Entre The Text To Translate'
                        : null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(185, 255, 153, 0)),
                  onPressed: () {
                    translate(
                        getLanguageCode(orignalLanguage),
                        getLanguageCode(destinationLanguage),
                        languageController.text.toString());
                    // getRecently();
                  },
                  child: Text(
                    'Translate',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '\n$output',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  AppBar(
                    systemOverlayStyle: SystemUiOverlayStyle(),
                    automaticallyImplyLeading: false,
                    backgroundColor: Color(0xff023047),
                    leading: Image.asset(
                      'assets/images/recentIcon.png',
                      scale: 15,
                      color: Colors.white,
                    ),
                    title: Text(
                      'History',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Color(0x62023047),
                    ),
                    width: 410,
                    height: 200,
                    child: ListView.builder(
                      itemCount: RecentlyData.length,
                      itemBuilder: (context, index) {
                        return RecentlyWidget(tmp: RecentlyData[index]);
                      },
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      RecentlyData.clear();
                    });
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void getRecently() {
    recentData(
      ogLangu: languageController.text.toString(),
      desLangu: transltion.text.toString(),
    );
  }
}
