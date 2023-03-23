import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        width: size.width,
        child: Stack(
          children: <Widget>[
            Image.asset('assets/img/background_intro.png'),
            Positioned(
              left: 145,
              child: SizedBox(
                width: size.width - 145,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: size.height / 3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icons/stoken_logo.svg',
                                  height: 40,
                                ),
                                _height(10),
                                Text(
                                  'SToken',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .apply(fontWeightDelta: 2),
                                ),
                                _height(10),
                                Text(
                                  'Open An Account For Digital E-Wallet Solutions. Instant Payouts.',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                _height(20),
                                Text(
                                  'Join For Free.',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _height(double height) {
    return SizedBox(
      height: height,
    );
  }
}
