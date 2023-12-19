import 'package:anhangueraonline/models/document_category.dart';
import 'package:anhangueraonline/widgets/drawer_custom.dart';
import 'package:flutter/material.dart';

class DocumentsPage extends StatefulWidget {
  final DocumentCategory documentCategory;
  const DocumentsPage({super.key, required this.documentCategory});

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late final DocumentCategory documentCategory;

  @override
  void initState() {
    documentCategory = widget.documentCategory;
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
          documentCategory.name,
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
            icon: Icon(Icons.filter_alt_outlined), // Ícone do drawer
            onPressed: () {
              // Abre o drawer quando o ícone for pressionado
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ],
      ),
      drawer: DrawerCustom(),
    );
  }
}