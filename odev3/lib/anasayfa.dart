import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
//left- start- leading
//right- end -trailing
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi= MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;//bunlar ekranın boyutunu veriyor yani artık yazı ekrandan çok buyuk gibi hata almicaz
//cunku bu ekran boyutlarını kullanarak yaz çiz diyebiliriz altta

    var d = AppLocalizations.of(context);


    return Scaffold(//bir sayfanın iskelesidir yani sabitlenir buraya resimler
        appBar: AppBar(title:  Text(d!.kartBaslik, style: TextStyle(color: siyah,fontFamily: 'Pacifico', fontSize: 22),), backgroundColor: beyaz, centerTitle: true,),

        body:ListView(
            children: [Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Image.asset("resimler/kartt.jpg",  width: 200,  // Görüntünün genişliğini ayarlayın
                    height: 200, // Görüntünün yüksekliğini ayarlayın
                    fit: BoxFit.contain, ),
                ),
                Padding(//bu çerçeveledi 8mm genişliğinde yani biraz etrafında boşluk bırakacak
                  padding: const EdgeInsets.only(top: 16),//sadece yukardan16mm boşluk bırakır
                  child: Text(d!.kartYazi, style: TextStyle(fontSize: 16,color: siyah,fontWeight: FontWeight.bold),),
                ),

                TextButton(onPressed: (){},
                  child: Text(d!.buttonYazi,style: TextStyle(color: siyah),),//text yazısı beyaz oldu
                  style: TextButton.styleFrom(backgroundColor: mavi),//buttonun iç rengi kırmızı oldu
                ),

                  ],

                ),


              ],
            ),
        );

  }
}
