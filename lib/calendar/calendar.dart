import 'package:card_designs/calendar/days_list.dart';
import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

bool isTapped = false;
int? selectednum;

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      width: MediaQuery.of(context).size.width,
      height: 380,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          //Top row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "March 2021",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          //List of Days
          GridView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 1, crossAxisSpacing: 1, crossAxisCount: 7),
            children: [
              ...days.map((e) => SizedBox(
                  width: 40,
                  height: 40,
                  child: Center(
                      child: Text(e,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)))))
            ],
          ),

          //Dates
          GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 30,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      isTapped = !isTapped;
                      selectednum = index;
                    });
                  },
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: isTapped && selectednum == index
                          ? CircleAvatar(
                              backgroundColor: const Color(0xff5A13F0),
                              child: Text(
                                "${selectednum! + 1}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          : Text("${index + 1}",
                              style: TextStyle(
                                  color: index == 6 ||
                                          index == 13 ||
                                          index == 20 ||
                                          index == 27
                                      ? Colors.red
                                      : Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500)),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
