import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State {
  // @override
  // void initState(){ // called before the build function
  //   super.initState();
  // }
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 20,
        title: Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            // padding and container
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                controller: textEditingController,
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please enter amount in PKR",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.grey,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(30),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    setState((){
                      result = double.parse(textEditingController.text) * 278.80;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: Size(
                      double.infinity,
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Convert"),
                )
                // child: ElevatedButton(
                //   style: ButtonStyle(
                //     backgroundColor: WidgetStatePropertyAll(Colors.black),
                //     foregroundColor: WidgetStatePropertyAll(Colors.white),
                //     minimumSize: WidgetStatePropertyAll(
                //       Size(
                //         double.infinity,
                //         50,
                //       ),
                //     ),
                //     shape: WidgetStatePropertyAll(
                //       RoundedRectangleBorder(
                //         side: BorderSide(
                //           color: Colors.black,
                //         ),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //     ),
                //   ),
                //   onPressed: () => debugPrint("button clicked"),
                //   child: const Text(
                //     "Convert",
                //   ),
                // ),
                )
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}