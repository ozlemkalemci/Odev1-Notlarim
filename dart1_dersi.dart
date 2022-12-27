import 'package:flutter/material.dart';

void main() {
  // ___________________________________________________________________SABİTLER____________________________________________________________
  //
  //
  const DART101= "I love dart"; // const sabitler code kompile olurken koda ekleniyo
  final DART_FINAL= "This is final value"; // runtimeda kod çalışırken ekleniyo
  // uygulamayı yazarken uygulama içinde değişmeyecek şeyler başlıklar ve renkler gibi const olabilir
  // classımız görüntümüz widgetimiz varsa ayağa kalkarken renk şu olacak gibi runtimeda çalıştığı sürece kırmızı kalması için final kullanılır
  // bu sabitlerimizi yeniden ismini atayamıyoruz örn; const DART101 = "yeni deger" yazarak tekrar kullanamayız.
  print(DART101);
  print(DART_FINAL);
  var dart_var = "yeni deger"; // değişkenimizi sonra tekrar tanımlayıp değiştirebiliyoruz
  print(dart_var);
  dart_var = "güncellenmiş yeni değer"; // güncelledik ve değeri değiştirdik
  print(dart_var);
  //
  //
  // _________________________________________________________________VERİ TİPLERİ____________________________________________________________
  //
  //
  // SAYISALLAR.............................
  //
  //


  String name = "dart";
  print(name);
  var name1="dart1"; 
  print(name1);
  // var name1="dart1" as String;
  // var name1="dart1" as double; dersek hata verir boş değer döner
  var number=1;    
  // int number=1; olarak da yazılabilir.
  // var number=1 as double; dersek hata verir boş değer döner
  // var number=1.0 as double; dersek çalışır
  //  ÖNEMLİ: print(name1+number);// var olarak tanımlanan str ve int değerleri toplanmaz
  var number2=5;
  var number3=10.0 as double; 
  // double number3=1.0; olarak da yazılabilir
  // artık number ile double toplanınca double olur

  print(number);
  print(number2+number3);
  // şu şekilde de toplamı yazdırabiliriz ve double döner

  var toplam = (number2+number3);
  print(toplam.toInt()); // bu şekilde integer yapabiliriz


  //
  //
  // STRINGLER............................................
  //
  //


  String name2 = "DART";
  String name3 = "101";
  String name4 = "\n101"; // alt satıra geçirme
  String name5 = r"\n101";
  String name6 = "the price is \$10";
  String name7 = "the price is \$${number3}";
  String name8 = '''  DART 101 çıktısı alırız 
  önce DART sonra alt satırda 101 yazan çıktı alırız
  kendi tanımladığımız bir değeri cümle içinde kullanmak için ''';
  String? nullgelebilen;
  late String null_ama_doldurulan;
  null_ama_doldurulan= "doldurduğum null";
  print(name2 + " " + name3); //  DART 101 çıktısı alırız
  print(name2 + " " + name4); // önce DART sonra alt satırda 101 yazan çıktı alırız
  print(name2 + " " + name5); // DART \n101 çıktısı alırız. çünkü r koyduğumuz için \n gibi aşağı indiren kodlarımız çalışmaz ve onlar da cümle içinde str olarak geçer
  print(name6); // dolar işaretinin okunabilmesi için 
  print(name7); // kendi tanımladığımız bir değeri cümle içinde kullanmak için 
  print(name8); // uzun cümleler metinler için
  print(nullgelebilen); // null çıktısı alınır
  print(null_ama_doldurulan); // doldurduğum null çıktısı alınır


  //
  //
  // BOOL.............................................
  //
  //


  var booltip = true;
  bool istrue = true;
  bool buyuk_mu =  number3 > 0;
  print(booltip); // true çıktısı
  print(istrue);  // true çıktısı
  print(buyuk_mu);// true çıktısı
  //
  //
  // ______________________________________________________________________OPERATORLER____________________________________________________________________
  // toplama, çıkarma, bölme, çarpma = (+), (-), (/), (*)
  // 
  //


  var topla = ((number2 + number3).toInt());
  print(topla);
  var cikar = ((number2 - number3).toInt());
  print(cikar);
  var bol = (number2 / number3);
  print(bol);
  print(bol.round()); // yukarı yuvarla 0.5 -> 1 olur
  print(bol.toStringAsFixed(2)); // noktadan sonra 2 basamak kalacak şekilde yuvarlıyor
  var carp = ((number2 * number3).toInt());
  print(carp);
  int numara = 6;

  // özel toplama işlemleri....................................

  print(++numara); // önce arttır sonra numarayı yaz  =7
  print(numara);  // =7
  print(numara++); // numarayı yaz sonra arttır. numara bir önceki artımda 7 olmuştu. çıktı= 7 olacak. sonra numara 1 artacak ama bunun çıktısını vermeyecek.
  print(numara); // bir öncekinde numaramızın artmış hali yazılmamıştı. ancak numara aslında arttırılmıştı. numaramızın son hali = 8 oldu.
  numara+=2;
  print(numara); // 8 olan numaramıza 2 ekledik. çıktımız=10.

  // bool operatörleri..........................................

  bool isbigger = numara > number3;
  print(isbigger); // false çıktısı aldık. 10 > 10.0 false verir.
  bool isequal = number == number3;
  print(isequal); // false çıktısı aldık. 10 == 10.0 false verir biri int biri float olduğu için.
  int num1=2;
  int num2=2;
  bool isequal2 = num1 == num2;
  print(isequal2);  // true çıktısı aldık. 2 == 2 true verir ikisi de int

  //
  //
  // bool operatörünü if koşulu için kullanma şekli............
  //
  //

  int calculate= num1 == num2 ? num1++: num2+=2; //eğer num1 num2'ye eşitse(?) num1'i arttır. eşit değilse(:) num2'yi 2 arttırsın
  print(calculate); // 2 çıktısını aldık
  print(num1); // çıktımız 3 oldu çünkü num1 ve num2 eşitti
  print(num2); // çıktımız 2 kaldı. değilse koşulu çalışmadı çünkü eşitlerdi
  //calculate çıktısının neden 2 olduğunu merak edip aşağıdaki denemeleri yapıyorum:

  int sayi = 5;
  int hesap= sayi < 6 ? sayi++: sayi--;
  print(hesap); // 5 çıktısını verdi. sayımız 1 arttı 6 oldu
  print(sayi); // sayi = 6 oldu

  int sayi2 = 4;
  int hesap2= sayi2 < sayi ? sayi2++: sayi--; // sayi2(4) küçükse sayi(6)dan sayi2(4) 1 artsın. değilse sayi(6) 1 azalsın
  // sayi2(4) 1 artacak
  print(hesap2); //çıktımız 4
  print(sayi2);

  int sayi3 = 4;
  int hesap3= sayi > sayi3 ? sayi3++: sayi--; // sayi(6) büyükse sayi3(4)ten sayi3(4) 1 artsın. değilse sayi(6) 1 azalsın
  // sayi3(4) 1 artacak
  print(hesap3); // çıktımız 4

  int sayi4 = 4;
  int hesap4= sayi > sayi4 ? sayi--: sayi4++; // sayi(6) büyükse sayi4(4)ten sayi(6) 1 azalsın. değilse sayi4(4) 1 artsın.
  // sayi(6) 1 azalacak
  print(hesap4); // çıktımız 6

  // ekrana değişen değerin çıktısını verdiğini anlıyorum. o zaman şu şekilde yazmak açıklayıcı olacaktır:
  int birinci = 4;
  int ikinci = 10;
  int hesap5= birinci > ikinci ? birinci--: ikinci++; // 4>10 false olduğu için değilse kısmı çalışır. 10 değişir ve 11 olur
  String cevap = "değişen değer: ${hesap5} \ndeğiştikten sonra birinci sayı: ${birinci} \ndeğiştikten sonra ikinci sayı: ${ikinci}";
  print(cevap); 
  
  // outputumuz aşağıdaki gibi olur:
  //................................
  //flutter: değişen değer: 10
  //değiştikten sonra birinci sayı: 4
  //değiştikten sonra ikinci sayı: 11
  //................................

  int? emtynumber;
  int nullsa= emtynumber ?? birinci; // eğer emptynumber null ise birinci yazdır
  print(nullsa); // çıktımız 4 

  int null_degilse = emtynumber != null ? 1 : 0; // emptynumber! şeklinde bir kullanım yapsak null olmadığından eminim diyor olacaktık. hata alırdık
  print(null_degilse); // 0 çıktısını aldık çünkü null


  //
  // _______________________________________________________________KOŞUL VE DÖNGÜLER______________________________________________________________
  //
  //

  // if, else if, else kullanımı...................
  int eleman=13;
  if(eleman < 10) {
    print("numara 10'dan küçük");
  } else if(eleman == 10) {
    print("numara 10'a eşit");
  } else if(eleman > 10 && eleman < 15) {
    print("numara 10 ile 15 arasında");
  } else{
    print("numara 15'ten büyük");
  } // çıktımız = "numara 10 ile 15 arasında"


  // for döngüsü kullanımı........................
  for (var i=0; i<=7; i++){
    print("sayimiz: $i");
      if(i == 7) {
        print("işlem sonlandı");
  }
  } // i=0dan başlayarak i'nin 7'ye eşit olacağı son değere kadar i'yi arttırarak devam et
  /*
  çıktımız;

  flutter: sayimiz: 0
  flutter: sayimiz: 1
  flutter: sayimiz: 2
  flutter: sayimiz: 3
  flutter: sayimiz: 4
  flutter: sayimiz: 5
  flutter: sayimiz: 6
  flutter: sayimiz: 7
  flutter: işlem sonlandı
  */
  
  // while döngüsü kullanımı........................
  int sayac=0;
  while(true){
    sayac++;
    print("number is $sayac");
    if(sayac==10){
      break;
    }
  } // sayac 10 olunca number is 10 yazıp durdu.

  // do while döngüsü kullanımı........................
  var a=0;
  do {
    a++;
    print("number is $a");
    if(a==10){
      break;
    }
  } while(true); // sayac 10 olunca number is 10 yazıp durdu.

  // switch case döngüsü kullanımı........................

  int numara_1= 6;
  switch(numara_1){
    case 1:
    print("numara 1");
    break;

    case 5:
    print("numara 5");
    break;

    default:
    print("case'ler sağlanmadı");
    break;
  } //"case'ler sağlanmadı" çıktısı verdi. caseler if default else gibi kullanıldı.

  //ders sonu sorusu: cevap( 1 3 5)
  for (int x = 0; x < 5; x++) { 
    print("ilk x: $x");
    print(x + 1); 
    x++; 
    print("son x: $x");
    } 


//
//
// istisnalar................
//
//

//hata yakalama gibi bir işlem. örneğin boş değer kullanacağız:
  var nullable_val;
  try{
    if(nullable_val>1){
      print("büyük");
      }
      }catch(e){
        print(e);
        }
  /* çıktımız:
  flutter: NoSuchMethodError: The method '>' was called on null.
  Receiver: null
  Tried calling: >(1)
  */
  print("diğer try catch çıktısı:");
  print(7/2*2+4/4+9);

  var yeni_null;
  try{
    if(yeni_null>1){
      print("büyük");
      }
      } on NoSuchMethodError{
        throw "SELAM BEN HATA";
      }catch(e){
        print(e);
      } finally{
        print("kod başarısız çalıştı");
      }/*çıktımız:
      flutter: kod başarısız çalıştı
      [ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: SELAM BEN HATA
      #0      main
      package:dart101/dart1_dersi.dart:302
      #1      _runMain.<anonymous closure> (dart:ui/hooks.dart:134:23)
      #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
      #3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)*/
 

}


