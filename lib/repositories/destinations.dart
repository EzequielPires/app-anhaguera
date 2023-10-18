import 'package:anhangueraonline/models/destination.dart';
import 'package:anhangueraonline/screens/about.dart';
import 'package:anhangueraonline/screens/consult_solicitation.dart';
import 'package:anhangueraonline/screens/phones.dart';
import 'package:anhangueraonline/screens/policy.dart';
import 'package:flutter/material.dart';

class DestinationRepository {
  final List<DestinationModel> destinations = const [
    DestinationModel(label: 'Consultar Solicitações', icon: Icon(Icons.search_outlined), page: ConsultSolicitation()),
    DestinationModel(label: 'Telefones Úteis', icon: Icon(Icons.phone_outlined), page: PhonesPage()),
    DestinationModel(label: 'Política de Privacidade', icon: Icon(Icons.shield_outlined), page: PolicyPage()),
    DestinationModel(label: 'Sobre', icon: Icon(Icons.info_outline), page: AboutPage()),
  ]; 
}

/* DestinationModel({labe: 'Consultar Solicitações', icons: Icon(Icons.search_outlined), Icon(Icons.search)}),
    DestinationModel('Telefones Úteis', Icon(Icons.phone_outlined), Icon(Icons.phone)),
    DestinationModel('Política de Privacidade', Icon(Icons.shield_outlined), Icon(Icons.shield)),
    DestinationModel('Sobre', Icon(Icons.info_outline), Icon(Icons.info)), */