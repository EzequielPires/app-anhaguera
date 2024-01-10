import 'package:anhangueraonline/models/category.dart';
import 'package:anhangueraonline/models/document_category.dart';

List<Category> categories = [
  Category(name: 'Denúncia Lotes Sujos', image: 'images/trator.png', id: 1),
  Category(name: 'Obstrução de Calçada', image: 'images/calcada.png', id: 2),
  Category(name: 'Solicitação de Benefícios Sociais', image: 'images/social.png', id: 3),
  Category(name: 'Solicitação de Caçamba', image: 'images/cacamba.png', id: 4),
  Category(name: 'Iluminação Pública', image: 'images/luz.png', id: 5),
  Category(name: 'Tapa Buracos', image: 'images/tapaburaco.png', id: 6),
  Category(name: 'Limpeza de Bueiros', image: 'images/bueiro.png', id: 7),
  Category(name: 'Roçagem', image: 'images/rocagem.png', id: 8),
  Category(name: 'Mataburros e Estradas Rurais', image: 'images/animais.png', id: 9),
];

List<DocumentCategory> documentCategories = [
  DocumentCategory(id: 1, name: 'Licitações', image: 'images/licitacoes.png'),
  DocumentCategory(id: 2, name: 'Contratos', image: 'images/contratos.png'),
  DocumentCategory(id: 3, name: 'Convênios', image: 'images/convenios.png'),
  DocumentCategory(id: 4, name: 'Dispensas', image: 'images/dispensas.png'),
];