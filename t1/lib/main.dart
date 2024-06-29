import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/card_product.dart';
import 'package:flutter_application_3/components/title_item.dart';
import 'package:flutter_application_3/components/visiteds.dart';
import 'package:flutter_application_3/types/product.dart';
import 'package:flutter_application_3/components/banner.dart' as banner_custom;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 1 - Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  //Map de produtos separados por tipo: (lançamentos e ofertas)
  final Map _products = {
    'lancamentos': [
      Product(
          productName:
              'GABINETE GAMER COOLER MASTER SNEAKER X RED, MINI-TOWER, FONTE SFX850W, WATER COOLER FLUX 360MM, CABO RISER PCI-E, 1 FAN MF120 HALO, ABK-SXNN-S38L3-R1',
          image: 'assets/products/abk-sxnn-s38l3-r13.jpg',
          initialPrice: 'R\$ 12.941,16',
          discountPrice: 'R\$ 8,299,99',
          parcelPrice: 'R\$ 9,764,69',
          parcelTimes: '12x de 812.72'),
      Product(
          productName: 'MOUSE GAMER REDRAGON FYZU PRO, WIRELESS, BLUETOOTH, 26000DPI, 6 BOTOES, PRETO, M995-PRO',
          image: 'assets/products/m995-pro1329.jpg',
          initialPrice: 'R\$ 352,82',
          discountPrice: 'R\$ 249,99',
          parcelPrice: 'R\$ 294,11',
          parcelTimes: '12x de 24,51')
    ],
    'ofertas': [
      Product(
          productName: 'COOLER PARA PROCESSADOR THERMALRIGHT PEERLESS ASSASSIN MINI, 120MM, BRANCO, TL-D12B-MINI-WH',
          image: 'assets/products/tl-d12b-mini-wh2.jpg',
          initialPrice: 'R\$ 399,99',
          discountPrice: 'R\$ 279,99',
          parcelPrice: 'R\$ 329,40',
          parcelTimes: '12x de 27,45'),
      Product(
          productName: 'FONTE GALAX OMEGA GL650S, 650W, 80 PLUS BRONZE, PRETO, PGO65BOTNATB0',
          image: 'assets/products/pgo65botnatb02.jpg',
          initialPrice: 'R\$ 541,16',
          discountPrice: 'R\$ 269,99',
          parcelPrice: 'R\$ 317,63',
          parcelTimes: '12x de 26,47'),
      Product(
          productName:
              'GABINETE GAMER MANCER CV300 PURPLE EDITION, MID-TOWER, LATERAL DE VIDRO, PRETO E ROXO, MCR-CV300-PEBK',
          image: 'assets/products/mcr-cv300-pebk4.jpg',
          initialPrice: 'R\$ 647,05',
          discountPrice: 'R\$ 219,99',
          parcelPrice: 'R\$ 258,81',
          parcelTimes: '12x de 21,57'),
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(iconSize: 35, icon: const Icon(Icons.search), onPressed: () {}, color: Colors.red[600]),
          ],
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                  height: 32,
                ),
                Flexible(
                    child: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(hintText: 'O que você procura?'))))
              ],
            ),
          )),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(8.0)),
            const banner_custom.Banner(image: 'assets/banners/banner_principal.webp', width: 370, height: 180),
            const banner_custom.Banner(image: 'assets/banners/promo1.webp', width: 370, height: 80),
            const banner_custom.Banner(image: 'assets/banners/promo2.webp', width: 370, height: 80),
            const banner_custom.Banner(image: 'assets/banners/promo3.webp', width: 370, height: 80),
            const TitleItem(title: 'Lançamentos'),
            ..._getProductList('lancamentos'),
            const TitleItem(title: 'Últimos produtos vistos'),
            const Visiteds(
              visiteds: [
                'assets/products/pc_monitor_teclado_01.jpg',
                'assets/products/mcr-arc-rgb5.jpg',
                'assets/products/mcr-vkz3h-bl01120.jpg'
              ],
            ),
            const TitleItem(title: 'Ofertas em destaque'),
            ..._getProductList('ofertas')
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red[600],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Categorias'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: 'Favoritos'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrinho'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Minha conta'),
          ]),
    );
  }

  //Map em torno da lista de produtos conforme o contexto
  _getProductList(context) {
    return _products[context].map((product) => CardProduct(
        image: product.image,
        productName: product.productName,
        initialPrice: product.initialPrice,
        discountPrice: product.discountPrice,
        parcelPrice: product.parcelPrice,
        parcelTimes: product.parcelTimes));
  }
}
