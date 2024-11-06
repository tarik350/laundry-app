import 'package:flutter/material.dart';
import 'package:laundryapp/pages/create%20order/carausel%20items/CaruselOne.dart';
import 'package:laundryapp/pages/gradient_background.dart';
import 'package:laundryapp/utils/constants.dart';
import 'package:laundryapp/widgets/nav_bar.dart';

class OrderSlider extends StatefulWidget {
  const OrderSlider({super.key});

  @override
  State<OrderSlider> createState() => _OrderSliderState();
}

class _OrderSliderState extends State<OrderSlider> {
  final List<Widget> _list = <Widget>[
    const CaruselOne(),
    Center(
        child: Pages(
      text: "Page Two",
      color: Colors.red.shade100,
    )),
    Center(
        child: Pages(
      text: "Page Three",
      color: Colors.grey,
    )),
    Center(
        child: Pages(
      text: "Page Four",
      color: Colors.yellow.shade100,
    ))
  ];
  int _curr = 0;

  final _controller = PageController();
  final List<String> titles = [
    'Preferances',
    "Payment",
    'Order',
    'Review and submit'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackGround(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Navbar(title: "Do My Laundary "),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white)),
                    width: MediaQuery.of(context).size.width,
                    height: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * .2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _curr == index
                                ? Constants.dartPurple
                                : Constants.veryDarkPurple,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'include detail ${_curr + 1}/4',
                  style: TextStyle(
                      color: Constants.dartPurple, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                titles[_curr],
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .8,
                child: PageView(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  onPageChanged: (currnetPageIndex) {
                    setState(() {
                      _curr = currnetPageIndex;
                    });
                  },
                  children: _list,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final String text;
  final Color color;
  Pages({required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ),
            ]),
      ),
    );
  }
}
