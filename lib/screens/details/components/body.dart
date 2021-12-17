import 'package:Fashion_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Imagenes_Iconos.dart';
import 'titulo_precio.dart';


class Body extends StatelessWidget {
  get price => 430;


void launchWhatsapp({@required number, @required message})async{
String url = "whatsapp://send?phone=$number&text=$message";

await canLaunch(url) ? launch(url) : print("Can't open whatsapp");
}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Jumper", country: "Gris", price: 430),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                    launchWhatsapp(number: "+527621682088", message: "Me gustaría comprar el modelo: Jumper, con precio de: $price");
                  },
                  child: Text(
                    "Comprar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Descripción"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}
