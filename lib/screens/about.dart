import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Política de Privacidade',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
        elevation: 2,
        toolbarHeight: 72,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'Sobre',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Text(
                'Anhanguera Smart',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Já pensou em ter acesso fácil e rápido aos diversos serviços e informações da Prefeitura de Anhaguera na palma da sua mão? O Anhanguera Smart é um aplicativo que auxilia o seu dia a dia como cidadão, e é muito fácil de usar! Conheça os principais benefícios e serviços:',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                  'Ouvidoria online: faça reclamações, solicitações ou sugestões enviando fotos e marcando o local através do GPS do seu smartphone (acompanhe suas solicitações enviando e recebendo mensagens da prefeitura na palma da sua mão, em qualquer ponto da cidade).',
                  textAlign: TextAlign.justify),
              SizedBox(height: 12,),
              Text(
                  'Tenha na palma da sua mão uma lista completa dos telefones de emergência e de serviços da cidade: postos de saúde, hospitais, Bombeiros, Polícia Militar, Samu, Defesa Civil, escolas, centros de educação infantil, serviços de esgoto, água e de todos os setores da prefeitura. Em poucos toques você já está ligando!',
                  textAlign: TextAlign.justify),
              SizedBox(height: 12,),
              Text(
                  'Receba, através de SMS, e-mail ou notificações do próprio aplicativo, todas as novidades da cidade e da prefeitura, fique por dentro do que está acontecendo em Anhaguera.',
                  textAlign: TextAlign.justify),
              SizedBox(height: 12,),
              Text(
                  'Ainda, serviços e conteúdos exclusivos de utilidade pública, vagas de emprego e muito mais.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 16,
              ),
              Text(
                'Seja bem-vindo ao aplicativo Anhanguera Smart!',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}