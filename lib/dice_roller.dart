import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
// sınıfın dışında tutmamızın sebebi bu kod dosyası ilk kez çalıştırıldığında bunun yalnızca bir kez oluşturulması
// ve state nesnesi her oluşturulduğunda state in içinde kalıp sürekli çalışmaması ve bellekte yer kaplamaması için.

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;  //güncel zar durumu b
  void rollDice() {
      
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1; // 1 ile 6 arasında değerler üretir.
    });
  }    

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //mainAxisSize(ana eksen boyutu) propertisi 2 parametre alır MainAxisSize.min parametresi dikey olarak en az yer kaplamasını sağlar.
      children: [
        Image.asset(
           'assets/images/dice-images/dice-$currentDiceRoll.png',  //currentDiceRoll değerini bu dizeye enjekte eder.
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(top: 20), ==>butonla Image arasına boşluk eklemek için butonu padding ile sarmaladık.
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
