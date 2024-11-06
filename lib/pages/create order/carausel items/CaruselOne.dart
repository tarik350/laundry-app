import 'package:flutter/material.dart';
import 'package:laundryapp/utils/constants.dart';
import 'package:laundryapp/widgets/GlassBG.dart';
import 'package:laundryapp/widgets/glass_card.dart';

class CaruselOne extends StatelessWidget {
  const CaruselOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Glass(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GlassCards(
                    title: "Premium Sented (popular)",
                    subtitle: 'Tide and clean',
                  ),
                  const GlassCards(
                    title: 'Hypoalergenic',
                    subtitle: 'Detergent that is free dies, perfumes ',
                  ),
                  const GlassCards(
                    title: 'I will provide',
                    subtitle:
                        'Inclue detergent with your laundary and we will use it.whatever is not used ',
                  ),
                  Text(
                    'Select One',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.4),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      customeButton('Delecate'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: customeButton('Hang-dry'),
                      ),
                      customeButton('Hangers'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Constants.primaryColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              color: Constants.scaffoldBackgroundColor,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
