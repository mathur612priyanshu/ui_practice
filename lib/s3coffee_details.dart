import 'package:flutter/material.dart';

class StarBucksCoffeeDeatils extends StatefulWidget {
  const StarBucksCoffeeDeatils({super.key});

  @override
  State<StarBucksCoffeeDeatils> createState() => _StarBucksCoffeeDeatilsState();
}

class _StarBucksCoffeeDeatilsState extends State<StarBucksCoffeeDeatils> {
  final List<String> items = [
    "Toasted Honey",
    "Caramel Drizzle",
    "Vanilla Powder",
    "Nutmeg"
  ];

  String selectedValue = "More";

  final List<Map<String, String>> toppingList = [
    {"topping1": "Chocolate Curls", "topping2": "Cocoa Powder"},
    {"topping1": "Pumpkin Spice", "topping2": "Smoked Sea Salt"},
    {"topping1": "Caramel Brulee", "topping2": "Chestnut Praline"},
  ];
  double value = 50;
  // final List<Percentage> percentage = PercentageList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 51, 119, 53),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Topping",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            isDense: true,
                            isExpanded: true,
                            iconEnabledColor: Colors.white.withOpacity(0.4),
                            hint: Text(
                              "More",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.4),
                                fontSize: 16,
                              ),
                            ),
                            dropdownColor: Colors.green.shade900,
                            items: items
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            })),
                  )

                  // SizedBox(
                  //   width: 70,
                  //   child: DropdownButtonHideUnderline(
                  //     child: DropdownButton(
                  //       isDense: true,
                  //       isExpanded: true,
                  //       iconEnabledColor: Colors.white.withOpacity(0.4),
                  //       hint: Text(
                  //         "More",
                  //         style: TextStyle(
                  //           color: Colors.white.withOpacity(0.4),
                  //           fontSize: 16,
                  //         ),
                  //       ),
                  //       dropdownColor: Colors.green.shade900,
                  //       items:
                  //           items.map<DropdownMenuItem<String>>((String value) {
                  //         return DropdownMenuItem<String>(
                  //           value: value,
                  //           child: Text(
                  //             value,
                  //             style: const TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 14,
                  //             ),
                  //           ),
                  //         );
                  //       }).toList(),
                  //       onChanged: (String? newValue) {
                  //         setState(() {
                  //           selectedValue = newValue!;
                  //         });
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
