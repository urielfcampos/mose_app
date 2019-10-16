import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

generateObjetivos(String Objetivos) {}

class INCompetencia extends StatelessWidget {
  final competencia;
  INCompetencia({this.competencia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Objetivos"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        body: ObjetivoList(competenciaName: this.competencia));
  }
}

class Objetivos {
  Objetivos({this.isExpanded: false, this.header, this.body});
  bool isExpanded;
  final String header;
  final dynamic body;
}

class ObjetivoList extends StatefulWidget {
  final String competenciaName;
  ObjetivoList({this.competenciaName});
  /*Here i opted to use the first 7 characters in the string "CompetenciasName"
  To standardize the access to the Map. since these strings don't have the
  same identifier length
   TODO: Look into extracting this into a file
  */
  Map<String, Map<String, dynamic>> mapCompentences = {
    "IN.1 Op": {
      "resultadosEsperados": "Espera-se para este objetivo que oportunidades e/ou problemas sejam"
          "identificados e registrados. Oportunidade representa algo capaz de"
          "melhorar o estado atual do negócio e/ou uma situação nova que traga a"
          "ele benefícios. Problemas representam uma dificuldade ainda não"
          "solucionada e que pode gerar bons negócios. Estas oportunidades e/ou"
          "problemas podem estar relacionadas a temas como: mudança e/ou criação"
          "de novos serviços, mudança e/ou criação de novos bens, melhoria no"
          "processo de produção de bens e serviços, melhoria no atendimento e"
          "relacionamento com o cliente, melhoria do marketing, observações no"
          "mercados-foco, entre outros. Não é desejável para o cumprimento deste"
          "objetivo que as oportunidades e problemas identificados sejam"
          "descartados por uma análise prévia e superficial. Eles devem estar"
          "registrados até mesmo para futuras análises e detalhamento.",
      "exemploDePraticas": [
        "Identificar mercados-foco e estudá-los identificando e registrando seus"
            "problemas e oportunidades;",
        "Estudar as práticas de gestão e produção da unidade de negócio;",
        "Estudar a comunicação com o cliente;",
        "Estudar bens e serviços que podem vir a ser desenvolvidos;",
        "Registrar as oportunidades e problemas identificados;",
        "Criar lista de oportunidade e/ou problemas para mercados-foco, cliente,"
            "práticas, bem, serviço, etc;",
        "Atualizar a lista de oportunidades e/ou problemas periodicamente",
      ],
      "IndicadoresObrigatorios": ["QtdeOportunidadesIdentificadas"],
      "OutrosIndicadores": ["HorasInovação", "\$CustoInovação"]
    },
    "IN.2 Id": {
      "resultadosEsperados": "Espera-se para este objetivo que sejam desenvolvidas ideias e cenários"
          "para atender as oportunidades ou resolver os problemas identificados em"
          "IN.1. O desenvolvimento das ideias e cenários deve considerar as"
          "principais características e os comportamentos do público-alvo. Deve-se"
          "detalhar os perfis mais relevantes de clientes e usuários, necessidades que"
          "serão resolvidas e como a inovação pode gerar a eles valor. As ideias e"
          "cenários devem apresentar também possíveis metas a serem atingidas,"
          "com seu comportamento temporal, para tornar claro quais poderiam ser"
          "os critérios de sucesso esperado. Para este objetivo, devem-se evitar"
          "discussões e julgamentos sobre a viabilidade de execução da inovação,"
          "ficando este item a critério do objetivo IN.3. As oportunidades e"
          "problemas identificados em IN.1 podem ser priorizados para o"
          "desenvolvimento das ideias e cenários caso não seja possível o"
          "desenvolvimento de todos.",
      "exemploDePraticas": [
        "Priorizar as oportunidades e os problemas para o desenvolvimento de"
            "ideias e cenários;",
        "Detalhar as oportunidades e/ou problemas, gerando ideias e criando"
            "cenários para atender as oportunidades e/ou resolver os problemas"
            "identificados;",
        "Identificar e mapear personas (perfis de cliente);",
        "Mapear o comportamento dos potenciais clientes que sentem as dores"
            "dos problemas identificados;",
        "Identificar quais seriam os valores recebidos pelos personas (internos e"
            "externos) da resolução do problema ou desenvolvimento das"
            "oportunidades;",
        "Identificar concorrentes presentes no mercado-foco com soluções para"
            "os problemas e/ou oportunidades identificados;",
        "Definir metas específicas, mensuráveis, atingíveis, relevantes e"
            "temporais para tornar claros os critérios de sucesso dos testes que serão"
            "realizados futuramente."
      ],
      "IndicadoresObrigatorios": ["QtdeOportunidadesDetalhadas"],
      "OutrosIndicadores": [
        "HorasInovação, \$CustoInovação",
        "%OportunidadesIdentificadasXDetalhadas"
      ]
    },
    "IN.3 Id": {
      "resultadosEsperados": "Espera-se para este objetivo que as ideias e os cenários desenvolvidos em"
          "IN.2 sejam analisados, discutidos, priorizados e selecionados para"
          "execução. A análise das ideias e cenários deve considerar pontos como: as"
          "metas que se espera atingir, esforço e custo necessários, viabilidade"
          "técnica, entre outros. A análise das ideias e dos cenários pode ser"
          "priorizada caso não seja possível a análise de todos. É importante que as"
          "ideias e cenários não selecionadas para a execução sejam preservados para"
          "que possam ser futuramente analisados e/ou desenvolvidos caso haja"
          "mudanças nos cenários ou negócios.",
      "exemploDePraticas": [
        "Priorizar as ideias e cenários que serão analisados;",
        "Analisar as ideias e cenários frente à viabilidade de execução;",
        "Estimar custo e esforço para a execução da inovação;",
        "Estudar produtos e serviços disponíveis que possam atender aos"
            "cenários e às idéias desenvolvidos;",
        "Definir estratégias para prospecção de novos clientes alinhado com as"
            "personas;",
        "Selecionar ideias e cenários que serão executados;"
      ],
      "IndicadoresObrigatorios": ["QtdeOportunidadesAnalisadas"],
      "OutrosIndicadores": [
        "HorasInovação",
        "\$CustoInovação",
        "%OportunidadesIdentificadasXDetalhadas"
      ]
    },
    "IN.4 Id": {
      "resultadosEsperados":
          "Espera-se para este objetivo a execução de ideias e cenários. Durante a"
              "execução do negócio inovador, o grupo de pessoas diretamente"
              "envolvidas planeje (considerando metas específicas, mensuráveis,"
              "atingíveis, relevantes e temporais), execute e monitore as ações de"
              "inovação (que podem estar organizadas em ciclos). Ações corretivas"
              "devem ser realizadas no caso de não cumprimento das metas. Deve-se"
              "também analisar a possibilidade abortar a execução da inovação ao"
              "observar-se a impossibilidade de se atingir as metas esperadas ou ocorrer"
              "mudanças relevantes no cenário dos negócios. Espera-se ao final a"
              "execução das ações (ou ciclos) planejadas que a inovação esteja"
              "incorporada ao negócio ou descartada.",
      "exemploDePraticas": [
        "Revisar metas especificadas em IN.3 para as ideias e cenários"
            "selecionados para execução;",
        "Desenvolver um plano para a inovação através de ciclos (e ações) para"
            "a execução das ideias e cenários, considerando metas específicas,"
            "mensuráveis, atingíveis, relevantes e temporais. O planejamento"
            "também deve identificar: recursos necessários, custo, esforço, risco,"
            "qualidade esperada, treinamentos, formas de monitorar o sucesso, etc;",
        "Executar os ciclos do plano de inovação;",
        "Monitorar a execução da inovação em relação a seu planejamento;",
        "Monitorar a execução da inovação através de análises periódicas"
            "alinhadas com a satisfação dos clientes;",
        "Identificar, executar e monitorar de ações corretivas se durante a"
            "execução do plano de inovação algo se desviar do planejado;",
        "Incorporar as inovações ao negócio.",
      ],
      "IndicadoresObrigatorios": ["QtdeOportunidadesExecutadas"],
      "OutrosIndicadores": [
        "HorasInovação",
        "\$CustoInovação",
        "%OportunidadesIdentificadasXExecutadas"
      ]
    },
    "IN.5 Ab": {
      "resultadosEsperados": "Espera-se para este objetivo que a unidade de negócio tenha definido"
          "métodos (ou abordagens) para a criação de novos negócios (ou melhoria"
          "significativa nos negócios existentes). Estes métodos devem incluir, pelo"
          "menos: (I) política para a inovação, (II) possíveis formas de capturar as"
          "oportunidades e problemas,(III) definição de técnicas para o"
          "desenvolvimento de cenários e sua análise, (IV) responsáveis pelo controle"
          "da inovação, (V)possíveis formas para executar e acompanhar as inovações"
          "identificadas, entre outros. Os métodos irão auxiliar os colaboradores da"
          "unidade de negócio a entender de que forma podem contribuir com o"
          "empreendimento, gerando inovação nos bens e serviços ofertados e na"
          "construção de oferta de outros ainda não produzidos pela unidade de"
          "negócio. Uma base de inovações deve ser criada e alimentada, inclusive"
          "para as inovações não incorporadas ao negócio.",
      "exemploDePraticas": [
        "Definir política para a inovação;",
        "Definir abordagens e métodos para a identificação e mapeamento de"
            "oportunidades e problemas;",
        "Definir abordagens e métodos para análise e estudo de viabilidade de"
            "negócios inovadores;",
        "Definir abordagens e métodos para priorização de oportunidades;",
        "Definir abordagens e métodos para o planejamento do desenvolvimento"
            "de novos negócios;",
        "Definir abordagens e métodos de execução de negócios inovadores;",
        "Estabelecer base de medição em relação às inovações executadas;",
        "Registrar todas as inovações realizadas (inclusive as não incorporadas ao"
            "negócio)"
      ],
      "IndicadoresObrigatorios": [
        "%AcertividadeInovação",
        "%%DescarteInovação",
        "HorasInovação",
        "\$CustoInovação"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "IN.6 An": {
      "resultadosEsperados":
          """Espera-se para este objetivo que os portfólios de bens e serviços
              produzidos pela unidade de negócio (ver CM.6) e de seus concorrentes
              sejam analisados de forma sistemática. Esta análise deve ter como foco
              a identificação de novas oportunidades e problemas que possam gerar
              inovações nos bens e serviços entregues atualmente e também a
              possível geração de novos negócios. As fraquezas e fortalezas do
              negócio e dos concorrentes identificadas em CM.5 devem também ser
              analisadas. As oportunidades e problemas identificados nos portfólios
              devem posteriormente ser tratados por IN.1, IN.2, IN.3, IN.4.""",
      "exemploDePraticas": [
        "Analisar portfólio dos bens e serviços da unidade de negócio"
            "com o intuito de identificar potenciais problemas e"
            "oportunidades;",
        "Analisar portfólio de bens e serviços similares ofertados pela"
            "concorrência;",
        "Analisar fortalezas e fraquezas da unidade de negócio e de seus"
            "concorrentes;",
        "Identificar, registrar e categorizar as oportunidades por"
            "portfólio;",
        "Identificar, registrar e categorizar os problemas que possam"
            "gerar oportunidades por portfólio;",
        "Comparar os bens e serviços produzidos pela unidade de"
            "negócio em relação à concorrência, identificando problemas e"
            "oportunidades;",
        "Identificar novos potenciais clientes, bem como oportunidades"
            "para aumento de negócios com os clientes atuais.",
      ],
      "IndicadoresObrigatorios": ["QtdeOportunidadesIdentificadasPortfólio"],
      "OutrosIndicadores": ["HorasInovação", "\$CustoInovação"]
    },
    "IN.7 A ": {
      "resultadosEsperados":
          """Espera-se para este objetivo que seja realizada a transição da inovação
              testada e aprovada para incorporação ao negócio (IN.4). Esta transição
              deve prever aspectos como, por exemplo: como abordar a inovação com
              os clientes atuais, como comunicar o mercado, mudanças que devem ser
              realizadas nas práticas de produção e gestão da unidade organizacional,
              orientações para a realização das práticas (de Cliente e Mercado, Gestão e
              Qualidade, Talento Humano e Sociedade e Ambiente), definição de
              acompanhamento da incorporação da práticas na unidade de negócio,
              entre outros. Além da definição dos aspectos citados anteriormente,
              devem-se também definir metas temporais de produção e vendas a serem
              atingidas com incorporação da inovação e estas devem ser acompanhadas
              durante a incorporação da inovação. Caso as metas não estejam sendo
              atingidas, devem-se realizar ações corretivas (que podem inclusive
              envolver a suspensão da inovação). Quando a inovação estiver
              completamente incorporada, são outras dimensões de competência do
              MOSE que irão tratá-la.
             """,
      "exemploDePraticas": [
        """
         Identificar aspectos relevantes para a realização da transição da
          inovação, como por exemplo: recursos humanos, comunicação
          necessária com o cliente e o mercado, método, práticas a serem
          incorporadas na célula produtiva e nas práticas de gestão,
          acompanhamentos necessários, ferramentas, recursos, etc;

        """,
        " A incorporação da inovação, definindo metas temporais de produção e"
            "venda a serem atingidas;",
        "Incorporar a inovação acompanhando se as metas estão sendo atingidas",
        " Realizar ações corretivas caso as metas não estejam sendo atingidas e"
            "gerencià-la até sua conclusão",
      ],
      "IndicadoresObrigatorios": [
        "QtdeOportunidadesIncorporadas",
      ],
      "OutrosIndicadores": ["não há"]
    },
    "IN.8 O ": {
      "resultadosEsperados":
          "Espera-se para este resultado que a base histórica de inovação"
              "desenvolvida em IN.5 seja estudada e adaptada para que possa ser"
              "possível observar agora o retorno do investimento com inovação."
              "Devem-se, para a análise do retorno do investimento, considerar as"
              "inovaçãos incorporadas bem como as descartadas. Entende-se como"
              "retorno para o investimento as medidas que representam o quanto se"
              "ganhou com a inovação em termos monetários, de negócio, de clientes,"
              "de mercado, entre outros aspectos que possam ser relevantes para a"
              "unidade de negócio. O retorno do investimento da inovação deve ser"
              "medido historicamente e acompanhado de forma sistemática.",
      "exemploDePraticas": [
        """
        Analisar a base histórica de medição;
        """,
        "Adaptar a base histórica para que seja possível observar o retorno do"
            "investimento com inovação;",
        "Analisar as inovações incorporadas e descartadas;",
        "Registrar todas as inovações realizadas;",
        "Medir o esforço e custo da identificação, análise e incorporação da"
            "inovação;",
        "Medir o ganho (em termos monetários, preferencialmente) para o"
            "negócio da inovação incorporada",
        'Disseminar na unidade de negócio o retorno do investimento com a'
            'realização das inovações.'
      ],
      "IndicadoresObrigatorios": [
        "ROIInovação",
        "%GanhoClientes, %PerdaClientes",
        "\$Entrada, \$Saídas, \$Resultado"
      ],
      "OutrosIndicadores": [
        "Não há",
      ]
    },
    "IN.9 O ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que as marcas, patentes e direitos autorais"
              "das inovações relevantes sejam devidamente registradas em órgãos"
              "oficiais.",
      "exemploDePraticas": [
        "Identificar as marcas relevantes para o negócio;",
        "Identificar as patentes relevantes para o negócio;",
        "Identificar os direitos autorais relevantes para o negócio;",
        "Realizar o registro de marcas, patentes e direitos autorais relevantes"
            "para o negócio em órgãos pertinentes;",
        "Realizar contratos para a exploração de marcas e patentes (quando"
            "pertinente)."
      ],
      "IndicadoresObrigatorios": [
        "QtdeMarcasRegistradas",
        "QtdePatentesRegistradas",
        "QtdeDireitosAutoraisRegistrados"
      ],
      "OutrosIndicadores": ["não há."]
    },
    "IN.E0 N": {
      "resultadosEsperados":
          "Nenhum dos objetivos de competência de Inovação (respeitando-se o"
              "seu perfil) é satisfeito pelas práticas executadas na unidade de"
              "negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em IN.1 a IN.9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em IN.1 a IN.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em IN.1 a IN.9"]
    },
    "IN.E1 A": {
      "resultadosEsperados":
          "Espera-se para este objetivo que pelo menos um dos objetivos de"
              "competência para a dimensão de Inovação (respeitando-se o seu"
              "perfil) esteja sendo satisfeito pelas práticas executadas da unidade de"
              "negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em IN.1 a IN.9"],
      "IndicadoresObrigatorios": ["Vide as práticas citadas em IN.1 a IN.9"],
      "OutrosIndicadores": ["Vide as práticas citadas em IN.1 a IN.9"]
    },
    "IN.E2 T": {
      "resultadosEsperados":
          "Espera-se para este objetivo que todos os objetivos da competência"
              "para a dimensão de Inovação (respeitando-se o seu tipo) estejam"
              "sendo satisfeitos pelas práticas executadas da unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em IN.1 a IN.9"],
      "IndicadoresObrigatorios": ["Vide as práticas citadas em IN.1 a IN.9"],
      "OutrosIndicadores": ["Vide as práticas citadas em IN.1 a IN.9"]
    },
    "IN.E3a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que itens relevantes (insumos, produtos,"
              "ferramentas, documentos, entre outros) utilizados e gerados pela"
              "execução das práticas de Inovação estejam controlados. Controlá-los"
              "envolve saber: onde estarão armazenados, quem pode ter acesso a eles,"
              "quem aprova e como será o controle de suas mudanças.",
      "exemploDePraticas": [
        "Identificar os itens que são relevantes (insumos, produtos, dados,"
            "ferramentas, documentos, entre outros) para o desenvolvimento das"
            "práticas de Inovação;",
        "Estabelecer mecanismos para controlar os itens relevantes (ex:"
            "ferramentas, ambientes físicos, etiquetagem, controle de acesso,"
            "versionamentos, controle de mudanças, quem é o “dono” do item,"
            "entre outros);"
      ],
      "IndicadoresObrigatorios": ["Não há"],
      "OutrosIndicadores": ["Não há"]
    },
    "IN.E3b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que as práticas de Inovação (IN.1 a IN.9,"
              "conforme o perfil da unidade de negócio) sejam auditadas observando se"
              "estão sendo executadas e se cumprem os padrões (se houver). Deve-se"
              "também considerar para este objetivo auditar os itens relevantes"
              "definidos em IN.E3a. As auditorias envolvem observar aspectos"
              "importantes das práticas de forma mais objetiva possível e ter também"
              "insights a respeito de possíveis melhorias em sua execução.",
      "exemploDePraticas": [
        "Selecionar os padrões que devem ser seguidos;",
        "Selecionar práticas de Inovação que devem ser executadas;",
        "Criar critérios para a auditoria da execução das práticas de Inovação"
            "como: periodicidade, necessidade, padrões a serem seguidos, etc;",
        "Criar checklist de auditoria para as práticas de Inovação;",
        "Criar checklist de auditoria para verificar se os itens relevantes das"
            "práticas de Inovação seguem os padrões definidos",
        "Executar auditorias identificando as não conformidades;",
        "Corrigir as não conformidades identificadas, se pertinente e possível;",
        "Planejar, monitorar e controlar as atividades específicas de auditoria;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesIN",
        "QtdeNãoConformidadesResolvidasIN"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "IN.E4a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a execução das práticas que satisfazem a"
              "competência de Inovação seja planejada. Este planejamento envolve a"
              "definição de: colaboradores envolvidos, recursos necessários, custo,"
              "tempo, esforço, riscos, comunicação e necessidades de treinamento."
              "Atividades relacionadas às auditorias (IN.E3b) e controle dos itens"
              "relevantes (IN.E3a) devem também ser planejados. Deve-se definir"
              "também como será realizado o monitoramento e controle da execução"
              "das práticas de Inovação.",
      "exemploDePraticas": [
        "Planejar esforço, tempo (cronograma) e custo, estimando as atividades"
            "e produtos que serão gerados pelas práticas de Inovação;",
        "Planejar os recursos humanos, suas responsabilidades, formas de"
            "comunicação e obter o comprometimento em relação ao trabalho para"
            "eles alocado na execução das práticas de Inovação;",
        "Planejar recursos gerais para execução das práticas de Inovação; "
            "Identificar e priorizar riscos relacionados às práticas de"
            "Inovação. Ações de contingenciamento e mitigação não são"
            "exigidas para este objetivo;",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Inovação;",
        "Planejar como será feita s auditoria (IN.E3b) para garantir que todos"
            "os objetivos da competência de Inovação (respeitando-se o"
            "seu tipo) estejam sendo cumpridos;",
        "Planejar como será feito o controle dos itens relevantes (IN.E3a)."
      ],
      "IndicadoresObrigatorios": [
        "%OportunidadeIdentificadasXAnalisadas",
        "%OportunidadeIdentificadasXExecutadas",
        "%OportunidadeIncorporadas",
        "%OportunidadesIdentificadasXDetalhadas",
        "CustoInovaçãoPlanXExecutado",
        "HorasInovaçãoPlanXExecutado"
      ],
      "OutrosIndicadores": ["Não há."]
    },
    "IN.E4b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que os parâmetros planejados para a execução"
              "das práticas de Inovação em IN.E4a sejam monitorados e controlados e,"
              "ações corretivas sejam realizadas se desvios significativos forem"
              "observados",
      "exemploDePraticas": [
        "Realizar monitoramento das atividades e parâmetros planejados em"
            "IN.E4a;",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo do planejado;",
        "Replanejar a execução das práticas de Inovação quando necessário",
        "Monitorar as ação corretivas até a sua conclusão;",
        "Registrar lições aprendidas da execução das práticas de Inovação;",
        "Estabelecer e alimentar base de desempenho."
      ],
      "IndicadoresObrigatorios": [
        "%OportunidadeIdentificadasXAnalisadas",
        "%OportunidadeIdentificadasXExecutadas",
        "%OportunidadeIncorporadas",
        "%OportunidadesIdentificadasXDetalhadas",
        "CustoInovaçãoPlanXExecutado",
        "HorasInovaçãoPlanXExecutado"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "IN.E4c ": {
      "resultadosEsperados": "Espera-se para este objetivo que indicadores e metas relacionada às"
          "práticas de Inovação estejam estabelecidos, mantidos e utilizados. Os"
          "indicadores e metas devem representar aspectos que são relevantes para a"
          "unidade de negócio, ou seja, devem estar alinhados aos seus objetivos de"
          "negócio. Espera-se também para este objetivo que uma base de"
          "desempenho das práticas da competência de Inovação seja estabelecida"
          "com o intuito de ser possível analisá-la no futuro e estabelecer um"
          "conjunto de práticas padrão (ativos).",
      "exemploDePraticas": [
        "Definir os indicadores e metas de controle das práticas de Inovação, os"
            "responsáveis por sua análise, como serão coletados, armazenados e"
            "validados (para que representem fatos verídicos);",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Inovação usando os indicadores e as metas definidas"
            "(uma ampliação do objetivo IN.E4a);",
        "Monitorar as práticas de Inovação em relação aos indicadores e metas"
            "e realizar ações corretivas caso se desviem do planejado (uma"
            "ampliação do objetivo IN.E4b);",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo das metas estabelecidas (uma ampliação do objetivo"
            "IN.E4b); Gerenciar as ações corretivas até sua finalização;",
        "Criar uma base histórica do desempenho da execução das práticas de"
            "Inovação; Alimentar a base histórica de desempenho com dados"
            "realistas e confiáveis."
      ],
      "IndicadoresObrigatorios": [
        "%OportunidadeIdentificadasXAnalisadas",
        "%OportunidadeIdentificadasXExecutadas",
        "%OportunidadeIncorporadas",
        "%OportunidadesIdentificadasXDetalhadas",
        "CustoInovaçãoPlanXExecutado",
        "HorasInovaçãoPlanXExecutado"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "IN.E5a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que, com base nas lições aprendidas e nas"
              "medições históricas da execução das práticas de Inovação (base"
              "histórica de desempenho), sejam estabelecidos padrões (e/ou ativos)."
              "Estes padrões devem ser usados e controlados e mecanismos para sua"
              "seleção e escolha, quando da necessidade da execução das práticas,"
              "devem estar claramente definidos.",
      "exemploDePraticas": [
        "Definir, estabelecer e manter padrões para a execução das práticas"
            "de Cliente e Mercado, como por exemplo: templates, processos,"
            "orientações, métodos, ambientes de trabalho, documentos de"
            "orientação, guias, diretrizes, desempenho padrão esperado,"
            "taxonomia de riscos, base de desempenho, checklist de auditorias"
            "de processo e produto, entre outros;",
        "Estabelecer e manter um sistema para controle dos padrões e/ou"
            "ativos das práticas de Inovação, que envolva por exemplo:"
            "armazenamento, acesso, responsabilidade, localização, proprietário,"
            "entre outros (pode-se usar o mesmo controle definido em IN.E3a,"
            "contudo, agora para os padrões);",
        "Definir critérios e formas de uso dos padrões e/ou ativos;",
        "Usar os padrões e/ou ativos na execução das práticas de Cliente e"
            "Mercado e realimentar as lições aprendidas e base histórica de"
            "desempenho;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesIN",
        "QtdeNãoConformidadesResolvidasIN",
        "%ItensAuditadosXNãoConformes",
        "%ItensPlanAuditoriaXAuditados"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "IN.E5b ": {
      "resultadosEsperados": "Espera-se para este objetivo que seja feita a identificação, análise,"
          "priorização e execução de melhorias nos padrões para execução das"
          "práticas da competência de Inovação. Deve-se considerar na identificação"
          "e análises, mas não restrito a, as lições aprendidas e base histórica de"
          "desempenho. Após análise, estas melhorias devem ser priorizadas e"
          "selecionadas para implementação nos padrões da unidade de negócio. As"
          "melhorias selecionadas devem ser implementadas de forma sistemática"
          "observando-se o comportamento da mudança, especialmente em relação"
          "à melhoria do desempenho. A melhoria implementada, se decidida sua"
          "continuidade, deve ser institucionalizada e incorporada aos padrões (vide"
          "IN.E5a). As mudanças nos padrões devem ser comunicadas às pessoas"
          "envolvidas e interessadas e mecanismos de transição dos padrões"
          "estabelecidos.",
      "exemploDePraticas": [
        "Estabelecer e manter mecanismos para captura de sugestões de"
            "melhoria e lições aprendidas;",
        "Coletar e analisar as lições aprendidas, base histórica de desempenho e"
            "sugestões de melhoria;",
        "Priorizar e selecionar as melhorias que serão implementadas nos"
            "padrões;",
        "Implementar as melhorias em um ambiente-teste observando a sua"
            "eficácia, especialmente em relação aos indicadores da base de"
            "desempenho;",
        "Incorporar a melhoria aos padrões, estabelecendo procedimentos de"
            "transição de uso e comunicando as pessoas interessadas;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesIN",
        "QtdeNãoConformidadesResolvidasIN",
        "%ItensAuditadosXNãoConformes",
        "%ItensPlanAuditoriaXAuditados",
        "QtdeMelhoriasColetadas",
        "QtdeMelhoriasImplantadas"
      ],
      "OutrosIndicadores": ["Não há"]
    },
  };
  @override
  _ObjetivoListState createState() => _ObjetivoListState();
}

class _ObjetivoListState extends State<ObjetivoList> {
  List<Objetivos> _objetivos = [];
  @override
  void initState() {
    String name = widget.competenciaName.substring(0, 7);
    print(name);
    this._objetivos.add(Objetivos(
        header: "Resultados Esperados",
        body: widget.mapCompentences[name]["resultadosEsperados"]));

    this._objetivos.add(Objetivos(
        header: "Exemplo de Praticas",
        body: widget.mapCompentences[name]["exemploDePraticas"]));

    this._objetivos.add(Objetivos(
        header: "Indicadores Obrigatorios",
        body: widget.mapCompentences[name]["IndicadoresObrigatorios"]));

    this._objetivos.add(Objetivos(
        header: "Outros Indicadores",
        body: widget.mapCompentences[name]["OutrosIndicadores"]));

    super.initState();
  }

  Widget renderListOrText(Objetivos objetivo) {
    if (objetivo.header == "Resultados Esperados") {
      return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
        child: Text(
          objetivo.body,
          textAlign: TextAlign.justify,
        ),
      );
    }
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: objetivo.body.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text("•"),
            title: Text(objetivo.body[index]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Container(
            child: Text(
              widget.competenciaName,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
        ),
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _objetivos[index].isExpanded = !_objetivos[index].isExpanded;
            });
          },
          children: _objetivos.map((Objetivos objetivo) {
            return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Text(
                    objetivo.header,
                  );
                },
                isExpanded: objetivo.isExpanded,
                body: Container(
                  child: Column(
                    children: <Widget>[renderListOrText(objetivo)],
                  ),
                ));
          }).toList(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(80, 0, 80, 20),
          child: RaisedButton(
            color: Colors.blue,
            child: Text(
              "Exemplos de Implementação",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            onPressed: _launchURL,
          ),
        ),
      ],
    );
  }

  _launchURL() async {
    const url = 'http://10.0.2.2:3000';
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw 'could not launch';
    }
  }
}
