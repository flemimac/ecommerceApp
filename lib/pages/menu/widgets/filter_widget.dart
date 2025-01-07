import 'package:flutter/material.dart';

import '../../../designs/designs.dart';

class FilterWidget extends StatefulWidget {
  final VoidCallback onToggle;

  const FilterWidget({
    super.key,
    required this.onToggle,
  });

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    var brandItems = [
      'Samsung',
      'Iphone',
      'Poco',
      'Galaxy',
      'Nokia',
    ];

    String brandDropDownValue = 'Samsung';

    var priceItems = [
      '\$100 - \$200',
      '\$200 - \$300',
      '\$300 - \$400',
      '\$400 - \$500',
    ];

    String priceDropDownValue = '\$100 - \$200';

    var sizeItems = [
      '4.5 to 5.5 inches',
      '6.5 to 6.5 inches',
      '6.5 to 7.5 inches',
    ];

    String sizeDropDownValue = '4.5 to 5.5 inches';

    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                print('back');
                widget.onToggle();
              }),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: otherColor,
            ),
            padding: EdgeInsets.only(top: 24, left: 44, right: 44, bottom: 44),
            child: Column(
              spacing: 40,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        color: darkBlueColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: crossIcon,
                      ),
                    ),
                    Text(
                      'Filter options',
                      style: TextStyle(
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: -0.33,
                      ),
                    ),
                    Container(
                      height: 37,
                      width: 86,
                      decoration: BoxDecoration(
                        color: lightOrangeColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Done',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: -0.33,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  spacing: 15,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Text(
                          'Brand',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: -0.33,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 37,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCDCDC),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButton(
                            value: brandDropDownValue,
                            icon: arrowDownIcon,
                            isExpanded: true,
                            underline: Container(),
                            dropdownColor: Colors.white,
                            items: brandItems.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontFamily: 'MarkPro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.33,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                brandDropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: -0.33,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 37,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCDCDC),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButton(
                            value: priceDropDownValue,
                            icon: arrowDownIcon,
                            isExpanded: true,
                            underline: Container(),
                            dropdownColor: Colors.white,
                            items: priceItems.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontFamily: 'MarkPro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.33,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                priceDropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(
                            fontFamily: 'MarkPro',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: -0.33,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 37,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFDCDCDC),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: DropdownButton(
                            value: sizeDropDownValue,
                            icon: arrowDownIcon,
                            isExpanded: true,
                            underline: Container(),
                            dropdownColor: Colors.white,
                            items: sizeItems.map((String item) {
                              return DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontFamily: 'MarkPro',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.33,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                sizeDropDownValue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
