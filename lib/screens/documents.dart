import 'package:anhangueraonline/models/document_category.dart';
import 'package:anhangueraonline/models/licitation.dart';
import 'package:anhangueraonline/repositories/licitation.dart';
import 'package:anhangueraonline/widgets/cards/document_licitation.dart';
import 'package:anhangueraonline/widgets/drawer_custom.dart';
import 'package:anhangueraonline/widgets/drawers/drawer_filter.dart';
import 'package:flutter/material.dart';

class DocumentsPage extends StatefulWidget {
  final DocumentCategory documentCategory;
  const DocumentsPage({super.key, required this.documentCategory});

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late List<Licitation> _licitations = [];
  final LicitationRepository _licitationRepository = LicitationRepository();
  late final DocumentCategory _documentCategory;

  Future<void> updateResults() async {
    var licitations = await _licitationRepository.findAll();
    setState(() {
      _licitations = licitations;
    });
  }

  @override
  void initState() {
    _documentCategory = widget.documentCategory;
    updateResults();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          _documentCategory.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 2,
        toolbarHeight: 72,
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt_outlined),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: _licitations.isNotEmpty ? ListView.separated(
          itemCount: _licitations.length,
          separatorBuilder: (context, index) => const SizedBox(height: 16,),
          itemBuilder: (context, index) =>
              CardDocumentLicitation(licitation: _licitations[index]),
        ) : const Text('Carregando...'),
      ),
      drawer: DrawerFilter(updateResults: updateResults),
    );
  }
}
