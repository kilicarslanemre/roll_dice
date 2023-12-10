import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
//başlangıçta (yani burada) değişkene değer atamadığımız için aligment türünde
// yazıp soru işareti eklersek (Aligment?) ilerde deger gelecegini veya null olabileceğini kastetmiş oluruz.
const endAlignment = Alignment.bottomRight;

//   İKİNCİ ÇÖZÜM
class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });
  //süslü parantez içi adlandırılmış, normal parantez içi konumsal argümandır.
  //adlandırılmış argümanın başına required (zorunlu/gerekli) koymak argümanı gerekli kılar.Konumsal argüman zaten zorunludur.
  const GradientContainer.purple({
    super.key,
  })  : // AYNI SINIFA BİRDEN FAZLA KURUCU İŞLEV EKLEDİK
        color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

//     İLK ÇÖZÜM
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key,required this.colors});
//              //süslü parantez içi adlandırılmış, normal parantez içi konumsal argümandır.
//             //isteğe bağlı argümanın başına required (zorunlu/gerekli) koymak argümanı gerekli kılar.
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(child: StyleTextwidget('Emre Kilicarslan')),
//     );
//   }
// }
