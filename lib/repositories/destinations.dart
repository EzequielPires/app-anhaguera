import 'package:app_anhanguera/models/destination.dart';
import 'package:flutter/material.dart';

class DestinationRepository {
  final List<DestinationModel> destinations = const [
    DestinationModel('Consultar Solicitações', Icon(Icons.search_outlined), Icon(Icons.search)),
    DestinationModel('Telefones Úteis', Icon(Icons.phone_outlined), Icon(Icons.phone)),
    DestinationModel('Política de Privacidade', Icon(Icons.shield_outlined), Icon(Icons.shield)),
    DestinationModel('Sobre', Icon(Icons.info_outline), Icon(Icons.info)),
  ]; 
}