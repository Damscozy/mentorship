import 'package:flutter/material.dart';

class Reuseables extends StatefulWidget {
  const Reuseables({super.key});

  @override
  State<Reuseables> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Reuseables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 60,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //////////// START ///////////
              // ': ! ?? ?',
              //SECTION ONE
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.deepOrange,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('0x5b...nkjh'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    child: const Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ],
              ),
              //SECTION TWO SPACE
              const SizedBox(
                height: 30,
              ),
              //SECTION TWO
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      // Colors.lightBlue,
                      Colors.greenAccent,
                      Colors.black45,
                      Colors.black87,
                      Colors.black,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '+23.5%',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          '\$24,378',
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '.00',
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //SECTION THREE SPACE
              const SizedBox(
                height: 30,
              ),
              //SECTION THREE
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(
                    title: 'Sell',
                    iconData: Icons.send,
                    color: Colors.blue,
                  ),
                  ActionButton(
                    title: 'Buy',
                    iconData: Icons.money,
                    color: Colors.black,
                  ),
                  ActionButton(
                    title: 'Exchange',
                    iconData: Icons.download,
                    color: Colors.green,
                  ),
                ],
              ),
              //SECTION FOUR SPACE
              const SizedBox(
                height: 30,
              ),
              //SECTION FOUR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Portfolio',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    child: const Text(
                      'All 24',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              //SECTION FIVE SPACE
              const SizedBox(
                height: 20,
              ),
              //SECTION FIVE
              const AssetCard(
                assetName: 'Polygon',
                shortCode: 'MATIC',
                amount: '\$12,421.00',
                quantity: '0.55 MATIC',
              ),
              const AssetCard(
                assetName: 'Ethereum',
                shortCode: 'ETH',
                amount: '\$12,421.00',
                quantity: '0.55 ETH',
              ),
              const AssetCard(
                assetName: 'Bitcoin',
                shortCode: 'BTC',
                amount: '\$12,421.00',
                quantity: '0.55 BTC',
              ),
              const AssetCard(
                assetName: 'Tether',
                shortCode: 'USDT',
                amount: '\$12,421.00',
                quantity: '0.55 USDT',
              ),
              // const AssetCard(
              //   assetName: 'Cardano',
              //   shortCode: 'ADA',
              //   amount: '\$12,421.00',
              //   quantity: '0.55 ADA',
              // ),
              ////////////// END. //////////////
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String title;
  final Color color;
  final IconData iconData;
  const ActionButton({
    required this.title,
    required this.color,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
        Text(title),
      ],
    );
  }
}

class AssetCard extends StatelessWidget {
  final String assetName;
  final String shortCode;
  final String amount;
  final String quantity;
  const AssetCard({
    required this.assetName,
    required this.shortCode,
    required this.amount,
    required this.quantity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        assetName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        shortCode,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .33,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        quantity,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
