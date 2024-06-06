import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chewbe_v2/Pages/Bottombar/Home/HomeUtills/NutrientCardWidget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Dashboard'),
      //   backgroundColor: Colors.green,
      // ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10.0),
          color: const Color(0xffF2F2F2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dashboard',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                  color: Color(0xff8C8C8C),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NutrientCard(
                    height: 290,
                    nutrient: 'Calories',
                    value: '0 / 1896',
                    isCalories: true,
                  ),
                  Column(
                    children: [
                      NutrientCard(
                        height: 90,
                        nutrient: 'Protein',
                        value: '0 / 169',
                        isCalories: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NutrientCard(
                        height: 90,
                        nutrient: 'Carb',
                        value: '0 / 219',
                        isCalories: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NutrientCard(
                        height: 90,
                        nutrient: 'Fats',
                        value: '0 / 62',
                        isCalories: false,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/home/background.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        'Count your ChewBe',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                    ),
                    Flexible(
                      child: Image.asset(
                        'assets/home/girl.png',
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
