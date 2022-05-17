import 'package:flutter/material.dart';
import 'package:varadero/Widget/pakages_card.dart';

const khomebodycolor = Color.fromRGBO(255, 255, 255, 1);

const kcolorInputPrefixIcon = Color.fromRGBO(1, 138, 190, 1);
const kbuttonAcceptBgColor = Color.fromRGBO(80, 134, 193, 1);
const kbuttonAcceptTextColor = Color.fromRGBO(255, 255, 255, 1);

const kremembermeStyle =
    TextStyle(color: Color.fromRGBO(49, 47, 47, 1), fontSize: 16);

const kChipsTextStyle = TextStyle(
  color: Color.fromRGBO(87, 85, 85, 1),
  fontSize: 16,
);

const kChipBackgroundColor = Colors.white;

const kLoginRegisterText = TextStyle(fontSize: 20, color: Colors.blue);

//input login Style
const kBorderSideColor = Color.fromRGBO(0, 0, 0, 0.2);

//IP de la aPi
const kIpApi = "45.138.49.84:3000";

List<PakagesCard> kcardList = [
  const PakagesCard(
    details: 'Ver servicios',
    pakage: 'Servicios sencillos',
    price: 'Compra los servicios que desees',
    icon: '',
  ),
  const PakagesCard(
    details: 'Ver servicios del paquete',
    pakage: 'Paquete de Plata',
    price: '\$ 200 al mes',
    icon: 'assets/plata.png',
  ),
  const PakagesCard(
    details: 'Ver servicios del paquete',
    pakage: 'Paquete de Oro ',
    price: '\$ 300 al mes',
    icon: 'assets/oro.png',
  ),
  const PakagesCard(
    details: 'Ver servicios del paquete',
    pakage: 'Paquete de Diamante ',
    price: '\$ 500 al mes',
    icon: 'assets/diamante.png',
  ),
];
