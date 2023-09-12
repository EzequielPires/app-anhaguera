import 'package:flutter/material.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'Política de Privacidade',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Text(
                'POR FAVOR, LEIA COM ATENÇÃO A POLÍTICA DE PRIVACIDADE ANTES DE ACESSAR OU USAR O APLICATIVO.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Seja bem-vindo ao aplicativo móvel Anhaguera NA MÃO, um aplicativo disponibilizado pela Prefeitura Municipal de Anhaguera (PMC). Este sistema foi desenvolvido para facilitar a vida do cidadão, oferecendo uma série de ferramentas, informações e serviços de utilidade pública:',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Ouvidoria: área que permite o cidadão interagir br a prefeitura (fiscalização, denúncias, elogios, reclamações e. sugestões);',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Telefones Úteis: lista completa dos telefones, endereços, canais de contato, das estruturas públicas ligadas ao poder executivo e outras estruturas que prestam serviços à comunidade;',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo da Previsão do tempo: emite alertas e informações da Defesa Civil;',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Cidade em Dados: dados completos do município, br informações históricas, geográficas, senso demográfico, recursos naturais, dados socioeconômicos, entre outros,',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Notícias da Cidade: canal de informação oficial do município, br fotos, notícias e comunicados da prefeitura e todas as secretarias e autarquias ligadas a administração;',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Conheça nossa cidade: canal de informações turísticas do município;',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Festas e Eventos: canal de divulgação do calendário de eventos do município;',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Fale br o Prefeito: canal de comunicação direto br o gabinete do prefeito;',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  'Módulo Táxi: informação sobre o serviço de Táxi disponível no município, endereços, telefones, entre outros.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                'O presente acordo é o contrato entre, APLICATIVO Anhaguera NA MÃO e você, município e usuário.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Ao baixar o aplicativo ou fazer o cadastro, você concorda, irrestritamente, em aceitar os termos indicados a seguir, na medida em que as disposições constantes vinculam o usuário do aplicativo móvel Anhaguera NA MÃO e protegem o próprio aplicativo e a PMC, em conformidade br as Leis Federais nº 9.609/1998 e 9.279/1996. Além da Política de Privacidade, esta dinâmica também é regulada pelos Termos de Uso.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                '1. Coleta de dados',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                  '1.1 A Política de Privacidade do aplicativo móvel Anhaguera NA MÃO inclui assegurar que seus dados pessoais não serão divulgados a terceiros para fins comerciais, ficando restritos à PMC e a empresa contratada para as quais os dados serão encaminhados exclusivamente para a realização do serviço solicitado.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  '1.2 Para realização do cadastro completo, incluindo o acesso aos serviços da Ouvidoria, o usuário deve fornecer os seguintes dados: nome completo, CPF, telefone e endereço.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  '1.3 Os dados de uma solicitação e do solicitante são armazenados pela PMC e pela empresa contratada. (para solicitações anônimas, considerar item o número 1.4). Todos os dados registrados pelo aplicativo móvel são replicados para ambiente de datacenter seguro.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  '1.4 Para alguns serviços específicos, a solicitação pode ser feita de forma anônima. Neste caso, não há registro das informações pessoais do usuário, incluindo seus contatos.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  '1.5 No caso de solicitações anônimas, o solicitante não receberá atualizações automáticas e não poderá acompanhar sua solicitação na área cadastrada dos canais de atendimento Anhaguera NA MÃO. Será possível acompanhar a solicitação apenas buscando pelo número do protocolo.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                  '1.6 O aplicativo móvel Anhaguera NA MÃO permite a recuperação de conta cuja senha de acesso tenha sido esquecida pelo usuário. Esse procedimento estará visível no aplicativo, e será acionado por meio do fornecimento do e-mail e/ou SMS via telefone celular, cadastrado pelo usuário.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                '2. Registro de navegação',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                  '2.1 O histórico das solicitações é armazenado pela PMC por tempo indeterminado.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                '3. Cookies',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                  '3.1 O aplicativo móvel Anhaguera NA MÃO cria alguns cookies para aumentar o desempenho nas utilizações seguintes. Somente a própria aplicação tem acesso a estes cookies.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                '4. Responsabilidade dos usuários no fornecimento de dados pessoais',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                  '4.1 Ao aceitar esta Política de Privacidade, você declara que todas as informações fornecidas ao aplicativo móvel Anhaguera NA MÃO são verdadeiras, exatas, atuais e completas, pois é uma obrigação do usuário atualizá-las para manter a veracidade e a exatidão das informações.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                '5. Cancelamento de cadastro',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                  '5.1 No caso de cancelamento do cadastro, o registro dos dados fornecidos continua armazenado por tempo indeterminado (ver termos 1.4 e 1.5).',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
              Text(
                '6. Dúvidas, descumprimentos e denúncias de uso indevido',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                  '6.1 A competência para o conhecimento, processamento ou julgamento de qualquer feito judicial, administrativo ou extrajudicial será o foro da comarca de Anhaguera, Goiás, Brasil, renunciando a parte contrária a qualquer outro foro, por mais privilegiado que seja.',
                  textAlign: TextAlign.justify),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}