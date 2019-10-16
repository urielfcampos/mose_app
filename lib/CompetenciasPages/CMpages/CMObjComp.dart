import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

generateObjetivos(String Objetivos) {}

class CMCompetencia extends StatelessWidget {
  final competencia;
  CMCompetencia({this.competencia});

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
    "CM.1 Ac": {
      "resultadosEsperados": "Espera-se para este objetivo que os acordos e/ou contratos com os"
          "clientes sejam estabelecidos e gerenciados. Pode-se entender cliente"
          "como quem irá receber o bem e/ou serviço produzido pela unidade de"
          "negócio. Estes clientes podem ser internos ou externos ao"
          "empreendimento. O nível de formalidade dos acordos e contratos irá"
          "depender do tipo de negócio, contudo, deve sempre existir. Espera-se"
          "também para este objetivo que seja observado se os bens e serviços estão"
          "sendo entregues e se os clientes estão realizando seus compromissos em"
          "relação aos acordos e/ou contratos.",
      "exemploDePraticas": [
        "Fazer contratos e acordos com os clientes;",
        "Criar e publicar os bens e/ou serviços fornecidos pela unidade de"
            "negócio e disponibilizá-los no site;",
        "Estabelecer estratégia de gerenciamento e mudanças dos acordos e"
            "contratos, quando pertinente;",
        "Analisar os acordos e contratos observando se as responsabilidades da"
            "unidade de negócio estão sendo cumpridas;",
        "Analisar os acordos e contratos observando se as responsabilidades"
            "dos clientes estão sendo cumpridas;",
        "Realizar ações para melhoria do cumprimento das obrigações dos"
            "clientes;",
        "Analisar inadimplência;",
        "Realizar ações para a diminuição da inadimplência"
      ],
      "IndicadoresObrigatorios": [
        "%ClientesInadimplentes;",
        "\$Entrada, \$Saída, \$Resultado"
      ],
      "OutrosIndicadores": [
        "\$ClientesInadimplentes",
        "QtdeBensEntreguesAtraso e/ou QtdeServiçosEntreguesAtraso",
        "QtdeBensAtrasados e/ou QtdeSerciçosAtrasados"
      ]
    },
    "CM.2 Ve": {
      "resultadosEsperados":
          "Espera-se para este objetivo que sejam realizadas ações de venda dos"
              "bens e/ou serviços da unidade de negócio e que estas sejam"
              "registradas. As vendas envolvem conhecer os bens e serviços que"
              "podem ser ofertados e seus possíveis clientes (mercado). Antes de"
              "vender, deve-se considerar as possibilidades das equipes de produção,"
              "ou seja, é desejável que não seja vendido algo que a unidade de"
              "negócio não tenha capacidade de entregar. Metas temporais de vendas"
              "devem ser estabelecidas, podendo ser detalhadas por mercado, bem,"
              "serviço, entre outros. As metas devem ser analisadas periodicamente e"
              "ações devem ser tomadas no caso de desvios do esperado. Caso as"
              "vendas envolvam ações mais complexas, o trabalho deve ser"
              "detalhado, estimado (tempo, custo e esforço), priorizado, distribuído"
              "entre os colaboradores e sua execução deve ser acompanhada e"
              "controlada.",
      "exemploDePraticas": [
        "Realizar ações para venda dos bens e serviços;",
        "Estabelecer e manter metas de vendas (ex: por bem , por serviço e/ou"
            "por mercado);",
        "Estabelecer e manter cadastro de clientes (se pertinente);",
        "Estabelecer novos acordos, contratos e/ou ampliá-los;",
        "Analisar perda de clientes/contratos e realizar ações para evitá-la;",
        "Estudar mercados;",
        "Desenvolver funis de venda e mantê-los;",
        "Analisar periodicamente as metas de vendas e tomar ações corretivas"
            "caso se desviem do planejado, gerenciando as ações até sua finalização;",
        "Rever metas de venda."
      ],
      "IndicadoresObrigatorios": [
        "CustoVenda; HorasVenda;",
        "%PerdaClientes; %GanhoClientes"
      ],
      "OutrosIndicadores": [
        "QtdeClientesPerdidos; QtdeClientesGanhos",
        "QtdeClientesProspectados; QtdeContratos;",
        "QtdeClientesXBem e/ou QtdeClientesXServiço;",
        "QtdeVendasBem e/ou QtdeVendasServiço;"
      ]
    },
    "CM.3 At": {
      "resultadosEsperados": "Atender ao cliente significa receber sua solicitação, processá-la, tirar"
          "dúvidas e providenciar a entrega dos bens e serviços adquiridos. CM.2 tem"
          "foco em vender os bens e serviços, CM.3 aborda os aspectos relacionados a"
          "garantir que os acordos e contratos realizados com o cliente sejam"
          "cumpridos. Metas de atendimento devem ser estabelecidas e mantidas,"
          "podendo ser detalhadas por bem e/ou serviço. As metas devem ser"
          "analisadas periodicamente e ações devem ser tomadas no caso de desvios"
          "do esperado. Quando os atendimentos envolvem ações mais complexas, o"
          "trabalho deve ser detalhado, estimado (tempo, custo e esforço), priorizado,"
          "distribuído entre os colaboradores e sua execução deve ser acompanhada e"
          "controlada.",
      "exemploDePraticas": [
        "Estabelecer mecanismos para atendimento ao cliente ex: meios de"
            "comunicação, pessoas, software, recursos, métodos, estruturas,"
            "fornecedores, entre outros;",
        "Entregar bens e serviços;",
        "Sanar dúvidas dos clientes em relação a um serviço prestado (ou em"
            "prestação);",
        "Sanar dúvidas de uso de bem adquirido;",
        "Estabelecer e manter metas de atendimento ao cliente;",
        "Registrar atendimentos, se pertinente;",
        "Compreender a quantidade de atendimentos realizados no mês;",
        "Analisar metas de atendimento e tomar ações para o caso de seu não"
            "cumprimento;",
        "Gerenciar ações até sua finalização"
      ],
      "IndicadoresObrigatorios": [
        "QtdeBensEntregues e/ou QtdeServiçosEntregues",
        "QtdeEntregasAtraso",
        "CustoAtendimento; HorasAtendimento;"
      ],
      "OutrosIndicadores": [
        "QtdeAtendimentosXBem e/ou QtdeAtendimentosXServiço",
        "%SatisfaçãoCliente",
        "%PerdaClientes, %GanhoClientes",
        "QtdeEntregas"
      ]
    },
    "CM.4 O ": {
      "resultadosEsperados": "Estabelecer formas de se relacionar com o cliente visa garantir,"
          "especialmente, uma boa imagem da unidade de negócio e fidelizar seus"
          "clientes. Espera-se para este objetivo que a unidade de negócio observe a"
          "satisfação de seus clientes em relação às experiências de consumo dos"
          "bens e serviços e que sejam desenvolvidas ações para resolver problemas"
          "que podem vir a manchar sua imagem. O relacionamento com o cliente"
          "pode ser realizado de diversas formas, por exemplo: telefone, internet,"
          "publicidade, visitas pessoais, pesquisas de satisfação, propaganda em"
          "radio e tv, entre outros. Para diversas unidades de negócio, a execução"
          "dos objetivos de CM.2, CM.3 e CM.4 pode estar sendo realizada pelo"
          "mesmo grupo de colaboradores, contudo, aborda temas diferentes."
          "Quando se fizerem ações mais complexas para se relacionar com o cliente"
          "e/ou mercado, o trabalho deve ser detalhado, estimado (tempo, custo e"
          "esforço), priorizado, distribuído entre os colaboradores (ou fornecedores)"
          "e sua execução deve ser acompanhada e controlada.",
      "exemploDePraticas": [
        "Estabelecer abordagens para se relacionar com o cliente;",
        "Efetuar ações de relacionamento com o cliente (ex: visitas técnicas,"
            "propaganda em TV, outdoors, ligações telefônicas, respostas a emails,"
            "pesquisa de satisfação, entre outros);",
        "Pesquisar a satisfação dos clientes;",
        "Definir indicador de satisfação do cliente, estabelecendo metas a serem"
            "atingidas;",
        "Desenvolver ações para melhoria da satisfação dos clientes;",
        "Ouvir sugestões e reclamações dos clientes;",
        "Registrar reclamações e insatisfações dos clientes",
        "Agir, se possível, para resolver uma insatisfação do cliente;",
        "Identificar melhorias que podem ser realizadas.",
      ],
      "IndicadoresObrigatorios": [
        "%PerdaClientes, %GanhoClientes",
        "QtdeProblemas, QtdeSugestões;"
      ],
      "OutrosIndicadores": [
        "%SatisfaçãoClientes",
        "QtdeProblemasXBem, QtdeSugestõesXBem",
        "QtdeProblemasXServiço, QtdeSugestõesXServiço",
        "CustoRelacionamento; HorasRelacionamento"
      ]
    },
    "CM.5 Os": {
      "resultadosEsperados": "Espera-se para este objetivo que os principais bens e/ou serviços ofertados"
          "pela unidade de negócio sejam organizados em portfólios. Cada bem e"
          "serviço especificado no portfólio, considerando parâmetros como:"
          "públicos-alvo, sua categorização e priorização; possíveis concorrentes e"
          "preços aplicados, potencialidade de inserção no mercado, fortalezas e"
          "fraquezas dos concorrentes, fortaleza e fraquezas da unidade de negócio,"
          "metas possíveis de produção (ver GQ.5), responsáveis, entre outros. Os"
          "bens e serviços detalhados no portfólio devem ser analisados"
          "periodicamente em relação a sua viabilidade econômica e de produção,"
          "atualizando o portfólio quando necessário. Não se faz necessário o"
          "detalhamento de um bem e/ou serviço de baixa relevância para a unidade"
          "de negócio.",
      "exemploDePraticas": [
        "Definir o portfólio de bens e/ou serviços relevantes para a unidade de"
            "negócio considerando detalhes como: perfis de clientes, preços a serem"
            "aplicados, potencial de inserção no mercado, metas de produção, entre"
            "outros;",
        "Analisar e compreender a viabilidade de produção e comercialização dos"
            "bens e serviços detalhados nos portfólios;",
        "Manter os portfólios considerando as análises realizadas;",
        "Estudar os bens e serviços similares ofertados pela concorrência e"
            "registrar suas fortalezas e fraquezas;",
        "Entender e registrar as fortalezas e fraquezas dos bens e serviços"
            "ofertados pela unidade de negócio em relação ao mercado;"
      ],
      "IndicadoresObrigatorios": [
        "%ClientesInadimplentes;",
        "%ClientesInadimplentesXBem e/ou %ClientesInadimplentesXServiço",
        "\$EntradaBem e/ou \$EntradaServiço",
        "\$SaídaBem e/ou \$SaídaServiço",
        "\$ResultadoBem e/ou \$ResultadoServiço",
        "%PerdaClientes; %GanhoClientes"
      ],
      "OutrosIndicadores": [
        "\$PerdidoClientesInadimplentes;",
        "QtdeBensEntreguesAtraso e/ou QtdeServiçosEntreguesAtraso",
        "QtdeBensAtrasados e/ou QtdeSerciçosAtrasados"
      ]
    },
    "CM.6 Pr": {
      "resultadosEsperados":
          """Espera-se para este objetivo que os clientes (internos ou externos ao
              empreendimento) sejam categorizados (em perfis) e que ações de
              prospecção, conservação e conversão de novos clientes sejam
              realizadas. Deve-se também para este objetivo realizar um
              detalhamento das vendas, agora considerando metas temporais
              específicas para os bens e serviços definidos nos portfólios (CM.5).
              A carteira de clientes e a rentabilidade dos diversos perfis de
              clientes, bens e serviços devem ser analisadas, tomando-se ações no
              caso do negócio iniciar uma fase de risco e/ou oportunidade. As
              metas de vendas (por bens e serviços do portfólio) devem ser
              analisadas periodicamente e ações devem ser tomadas se não
              estiverem sendo atingidas.""",
      "exemploDePraticas": [
        "Categorizar clientes e priorizá-los;",
        "Estabelecer as metas temporais de venda a serem atingidas para a"
            "venda dos bens e serviços definidos nos portfólios. Definir as metas a"
            "serem atingidas considerando, por exemplo: metas por tipo de cliente,"
            "por bem e/ou serviço ofertado, metas de venda, entre outros;",
        "Acompanhar as metas de venda dos bens e serviços;",
        "Desenvolver estratégias para prospecção de novos clientes;",
        "Prospectar novos clientes e/ou realizar novos acordos e contratos com"
            "clientes existentes;",
        "Analisar perda de clientes e realizar ações para evitá-la;",
        "Desenvolver funis de venda e mantê-los.",
      ],
      "IndicadoresObrigatorios": [
        "%PerdaClientes: %GanhoClientes (XBem e/ou Serviço)",
        "CustoVendas; HorasVendas;",
        "%ClientesInadimplentes;"
      ],
      "OutrosIndicadores": [
        "%ClientesInadimplentesXBem e/ou %ClientesInadimplentesXServiço"
      ]
    },
    "CM.7 Ab": {
      "resultadosEsperados":
          """Espera-se para este objetivo que sejam estabelecidos canais para o
             atendimento das solicitações dos clientes e entrega dos bens e/ou serviços
             produzidos pela unidade de negócio. Para o bom desempenho dos canais, é
             necessário entender qual a sua disponibilidade, evitando que algum cliente
             possa ficar sem atendimento e/ou em longas filas que possam vir a ter
             impacto negativo ao negócio. A disponibilidade é determinada através da
             quantidade de atendimentos que pode ser realizada pelos canais, podendo
             variar conforme período (ex: datas festivas), horários (ex: comercial),
             lançamento de novos serviços, entre outros. A determinação da
             disponibilidade também deve considerar os acordos firmados com os
             clientes (vide CM.1). Metas de disponibilidade para os canais devem ser
             estabelecidas e devem ser analisadas periodicamente, realizando ajustes
             para o caso de não estarem sendo cumpridas.
             """,
      "exemploDePraticas": [
        """
         Estabelecer canais para atendimento aos clientes que determinam a
            forma como o cliente pode ser atendido para obter o bem e/ou serviço
            desejado. Os canais envolvem: meios de comunicação, pessoas, software,
            recursos, métodos, estruturas, horários, metas a serem alcançadas, entre
            outros. Além do atendimento ao cliente, estes canais desempenham um
            papel importante em vendas;

        """,
        " Estabelecendo metas de disponibilidade a serem atingidas (podendo ser"
            "detalhado em: tipo de atendimento, região, serviço, horários, clientes,"
            "datas específicas, entre outros);",
        "Analisar as metas de disponibilidade gerando ações no caso de seu não cumprimento;",
        " Gerenciar ações até sua finalização.",
      ],
      "IndicadoresObrigatorios": [
        "%DisponibilidadeAtendimento",
        "%SatisfaçãoCliente",
      ],
      "OutrosIndicadores": [
        "%DisponibilidadeAtendimentoBem e/ou Serviço",
        "CapacidadeEntregaBem e/ou CapacidadeEntregaServiço",
        "%PerdaClientes, %GanhoClientes"
      ]
    },
    "CM.8 Ab": {
      "resultadosEsperados": "Espera-se para este objetivo que sejam estabelecidos e mantidos canais de"
          "relacionamento e comunicação com o mercado-foco. Estudos devem ser"
          "realizados para observar se a forma de relacionamento com o mercadofoco"
          "está sendo eficiente e ajustes devem ser realizados quando esta"
          "comunicação não surte efeitos positivos para o negócio. Canais de"
          "relacionamento com os clientes devem existir e possibilitar uma"
          "comunicação efetiva. Metas de satisfação dos clientes devem ser definidas"
          "e analisadas e ações para seu alcance devem ser realizadas. As metas"
          "devem estar estabelecidas considerando os portfólios definidos em CM.5.",
      "exemploDePraticas": [
        """
        Estabelecer canais para o relacionamento com os clientes;
        """,
        "Desenvolver pesquisas de satisfação, analisá-las e tomar ações no caso"
            "de não cumprimento das metas de satisfação pré-definidas;",
        "Estudar o mercado-foco e possíveis formas de se comunicar com os"
            "clientes (tanto atuais quanto potenciais);",
        "Realizar pesquisas de mercado para entender a aceitabilidade dos bens"
            "e serviços ofertados;",
        "Analisar comunicação realizada pela unidade de negócio e concorrentes"
            "e entender as fraquezas e fortalezas;",
        "Construir estratégia de comunicação com o mercado e estabelecer a"
            "comunicação que será realizada com os clientes no mercado-foco, por"
            "exemplo: sites, eventos, palestras, workshops, visitas, mailing list,"
            "simpósios, entre outros;",
        'Estabelecer metas a serem atingidas com a comunicação;',
        'Analisar se a comunicação realizada está surtindo o efeito esperado'
            'para o negócio, especialmente em relação a metas pré-definidas;',
        'Conhecer o market size e target market;',
        'Desenvolver sites com o conteúdo dos serviços e bens já prestados,'
            'deixando claro quais foram seus clientes.'
      ],
      "IndicadoresObrigatorios": [
        "%PerdaClientes, %GanhoClientes, %SatisfaçãoClientes",
        "TargetMarket, MarketSize",
        "\$CustoMarketing",
        "HorasMarketing"
      ],
      "OutrosIndicadores": [
        "%SatisfaçãoClientes",
        "%GanhoClientes, %PercaClientes",
      ]
    },
    "CM.9 In": {
      "resultadosEsperados":
          "Espera-se para este objetivo que incidentes da entrega dos bens e/ou"
              "serviços sejam tratados em tempo de não gerar desgastes com o"
              "cliente. Entende-se por incidente qualquer evento não planejado que"
              "tem o potencial de levar a um acidente na entrega do bem e/ou"
              "serviço desenvolvido para o cliente. Os incidentes, além de serem"
              "resolvidos, devem também ser registrados e análises periódicas"
              "devem ser realizadas com a intenção de preveni-los.",
      "exemploDePraticas": [
        "Definir estratégia para resolução de incidentes (ex: o que é um"
            "incidente, equipe que deve estar apta a resolvê-lo e analisá-lo, onde"
            "registrá-lo, categorização por tipo de cliente, periodicidade de análise,"
            "entre outros);",
        "Identificar incidentes;",
        "Resolver incidentes ocorridos;",
        "Registrar os incidentes;",
        "Mapear potenciais incidentes ao longo do ciclo de vida de determinados"
            "serviços;",
        "Mapear potenciais incidentes de entrega de produtos;",
        "Definir método para análise de impacto de incidentes;",
        "Analisar periodicamente os incidentes e realizar ações para sua"
            "prevenção;",
        "Gerenciar ações de prevenção até a sua conclusão."
      ],
      "IndicadoresObrigatorios": [
        "QtdeIncidentes",
        "%IncidentesResolvidos",
        "HorasResoluçãoIncidentes",
        "HorasPrevençãoIncidentes"
      ],
      "OutrosIndicadores": [
        "%SatisfaçãoClientes",
        "%GanhoClientes, %PercaClientes"
      ]
    },
    "CM.E0 N": {
      "resultadosEsperados":
          "Nenhum dos objetivos de competência de Cliente e Mercado"
              "(respeitando-se o seu perfil) é satisfeito pelas práticas executadas na"
              "unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em CM.1 a CM.9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em CM.1 a CM.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em CM.1 a CM.9"]
    },
    "CM.E1 A": {
      "resultadosEsperados":
          "Espera-se para este objetivo que pelo menos um dos objetivos de"
              "competência para a dimensão de Cliente e Mercado (respeitando-se o"
              "seu perfil) esteja sendo satisfeito pelas práticas executadas da"
              "unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em CM.1 a CM.9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em CM.1 a CM.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em CM.1 a CM.9"]
    },
    "CM.E2 T": {
      "resultadosEsperados":
          "Espera-se para este objetivo que todos os objetivos da competência"
              "para a dimensão de Cliente e Mercado (respeitando-se o seu tipo)"
              "estejam sendo satisfeitos pelas práticas executadas da unidade de"
              "negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em CM.1 a CM.9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em CM.1 a CM.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em CM.1 a CM.9"]
    },
    "CM.E3a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que itens relevantes (insumos, produtos,"
              "ferramentas, documentos, entre outros) utilizados e gerados pela"
              "execução das práticas de Cliente e Mercado estejam controlados."
              "Controlá-los envolve saber: onde estarão armazenados, quem pode ter"
              "acesso a eles, quem aprova e como será o controle de suas mudanças.",
      "exemploDePraticas": [
        "Identificar os itens que são relevantes (insumos, produtos, dados,"
            "ferramentas, documentos, entre outros) para o desenvolvimento das"
            "práticas de Cliente e Mercado;",
        "Estabelecer mecanismos para controlar os itens relevantes (ex:"
            "ferramentas, ambientes físicos, etiquetagem, controle de acesso,"
            "versionamentos, controle de mudanças, quem é o “dono” do item,"
            "entre outros);"
      ],
      "IndicadoresObrigatorios": ["Não há"],
      "OutrosIndicadores": ["Não há"]
    },
    "CM.E3b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que as práticas de Cliente e Mercado (CM.1"
              "a CM.9, conforme o perfil da unidade de negócio) sejam auditadas"
              "observando se estão sendo executadas e se cumprem os padrões (se"
              "houver). Deve-se também considerar para este objetivo auditar os itens"
              "relevantes definidos em CM.E3a. As auditorias envolvem observar"
              "aspectos importantes das práticas de forma mais objetiva possível e ter"
              "também insights a respeito de possíveis melhorias em sua execução.",
      "exemploDePraticas": [
        "Selecionar os padrões que devem ser seguidos;",
        "Selecionar práticas de Cliente e Mercado que devem ser executadas;",
        "Criar critérios para a auditoria da execução das práticas de Cliente e"
            "Mercado como: periodicidade, necessidade, padrões a serem seguidos,"
            "etc;",
        "Criar checklist de auditoria para as práticas de Cliente e Mercado;",
        "Criar checklist de auditoria para verificar se os itens relevantes das"
            "práticas de Cliente e Mercado seguem os padrões definidos;",
        "Executar auditorias identificando as não conformidades;",
        "Corrigir as não conformidades identificadas, se pertinente e possível;",
        "Planejar, monitorar e controlar as atividades específicas de auditoria;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesCM",
        "QtdeNãoConformidadesResolvidasCM"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "CM.E4a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a execução das práticas que satisfazem a"
              "competência de Cliente e Mercado seja planejada. Este planejamento"
              "envolve a definição de: colaboradores envolvidos, recursos necessários,"
              "custo, tempo, esforço, riscos, comunicação e necessidades de"
              "treinamento. Atividades relacionadas às auditorias (CM.E3b) e controle"
              "dos itens relevantes (CM.E3a) devem também ser planejados. Deve-se"
              "definir também como será realizado o monitoramento e controle da"
              "execução das práticas de Cliente e Mercado.",
      "exemploDePraticas": [
        "Planejar esforço, tempo (cronograma) e custo, estimando as atividades"
            "e produtos que serão gerados pelas práticas de Cliente e Mercado;",
        "Planejar os recursos humanos, suas responsabilidades, formas de"
            "comunicação e obter o comprometimento em relação ao trabalho para"
            "eles alocado na execução das práticas de Cliente e Mercado;",
        "Planejar recursos gerais para execução das práticas de Cliente e"
            "Mercado; Identificar e priorizar riscos relacionados às práticas de"
            "Cliente e Mercado. Ações de contingenciamento e mitigação não são"
            "exigidas para este objetivo;",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Cliente e Mercado;",
        "Planejar como será feita s auditoria (CM.E3b) para garantir que todos"
            "os objetivos da competência de Cliente e Mercado (respeitando-se o"
            "seu tipo) estejam sendo cumpridos;",
        "Planejar como será feito o controle dos itens relevantes (CM.E3a)."
      ],
      "IndicadoresObrigatorios": [
        "CustoVendaPlanXExecutada, HorasVendaPlanXExecutada",
        "%SatisfaçãoClientePlanXExecutada",
        "%PerdaClientePlanXExecutada,%GanhoClientePlanXExecutado",
        "CustoAtendimentoPlanXExecutado",
        "HorasAtendimentoPlanXExecutado",
        "CustoMarketingPlanXExecutado, HorasMarketingPlanXExecutada",
        "CustoRelacionamentoPlanXExecutado",
        "HorasRelacionamentoPlanXExecutada",
        "CustoVendaPlanXExecutada, HorasVendaPlanXExecutada"
      ],
      "OutrosIndicadores": ["Não há."]
    },
    "CM.E4b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que os parâmetros planejados para a execução"
              "das práticas de Cliente e Mercado em CM.E4a sejam monitorados e"
              "controlados e, ações corretivas sejam realizadas se desvios significativos"
              "forem observados.",
      "exemploDePraticas": [
        "Realizar monitoramento das atividades e parâmetros planejados em"
            "CM.E4a;",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo do planejado;",
        "Replanejar a execução das práticas de Cliente e Mercado quando"
            "necessário;",
        "Monitorar as ação corretivas até a sua conclusão;",
        "Registrar lições aprendidas da execução das práticas de Cliente e"
            "Mercado;",
        "Estabelecer e alimentar base de desempenho."
      ],
      "IndicadoresObrigatorios": [
        "CustoVendaPlanXExecutada, HorasVendaPlanXExecutada",
        "%SatisfaçãoClientePlanXExecutada",
        "%PerdaClientePlanXExecutada,%GanhoClientePlanXExecutado",
        "CustoAtendimentoPlanXExecutado",
        "HorasAtendimentoPlanXExecutado",
        "CustoMarketingPlanXExecutado, HorasMarketingPlanXExecutada",
        "CustoRelacionamentoPlanXExecutado",
        "HorasRelacionamentoPlanXExecutada",
        "CustoVendaPlanXExecutada, HorasVendaPlanXExecutada"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "CM.E4c ": {
      "resultadosEsperados": "Espera-se para este objetivo que indicadores e metas relacionada às"
          "práticas de Cliente e Mercado estejam estabelecidos, mantidos e"
          "utilizados. Os indicadores e metas devem representar aspectos que são"
          "relevantes para a unidade de negócio, ou seja, devem estar alinhados aos"
          "seus objetivos de negócio. Espera-se também para este objetivo que uma"
          "base de desempenho das práticas da competência de Cliente e Mercado"
          "seja estabelecida com o intuito de ser possível analisá-la no futuro e"
          "estabelecer um conjunto de práticas padrão (ativos).",
      "exemploDePraticas": [
        "Definir os indicadores e metas de controle das práticas de Cliente e"
            "Mercado, os responsáveis por sua análise, como serão coletados,"
            "armazenados e validados (para que representem fatos verídicos);",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Cliente e Mercado usando os indicadores e as metas"
            "definidas (uma ampliação do objetivo CM.E4a);",
        "Monitorar as práticas de Cliente e Mercado em relação aos indicadores"
            "e metas e realizar ações corretivas caso se desviem do planejado (uma"
            "ampliação do objetivo CM.E4b);",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo das metas estabelecidas (uma ampliação do objetivo"
            "CM.E4b); Gerenciar as ações corretivas até sua finalização;",
        "Criar uma base histórica do desempenho da execução das práticas de"
            "Cliente e Mercado; Alimentar a base histórica de desempenho com"
            "dados realistas e confiáveis."
      ],
      "IndicadoresObrigatorios": [
        "CustoVendaPlanXExecutada, HorasVendaPlanXExecutada",
        "%SatisfaçãoClientePlanXExecutada",
        "%PerdaClientePlanXExecutada,%GanhoClientePlanXExecutado",
        "CustoAtendimentoPlanXExecutado",
        "HorasAtendimentoPlanXExecutado",
        "CustoMarketingPlanXExecutado, HorasMarketingPlanXExecutada",
        "CustoRelacionamentoPlanXExecutado",
        "HorasRelacionamentoPlanXExecutada",
        "CustoVendaPlanXExecutada, HorasVendaPlanXExecutada"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "CM.E5a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que, com base nas lições aprendidas e nas"
              "medições históricas da execução das práticas de Cliente e Mercado"
              "(base histórica de desempenho), sejam estabelecidos padrões (e/ou"
              "ativos). Estes padrões devem ser usados e controlados e mecanismos"
              "para sua seleção e escolha, quando da necessidade da execução das"
              "práticas, devem estar claramente definidos.",
      "exemploDePraticas": [
        "Definir, estabelecer e manter padrões para a execução das práticas"
            "de Cliente e Mercado, como por exemplo: templates, processos,"
            "orientações, métodos, ambientes de trabalho, documentos de"
            "orientação, guias, diretrizes, desempenho padrão esperado,"
            "taxonomia de riscos, base de desempenho, checklist de auditorias"
            "de processo e produto, entre outros;",
        "Estabelecer e manter um sistema para controle dos padrões e/ou"
            "ativos das práticas de Cliente e Mercado, que envolva por exemplo:"
            "armazenamento, acesso, responsabilidade, localização, proprietário,"
            "entre outros (pode-se usar o mesmo controle definido em CM.E3a,"
            "contudo, agora para os padrões);",
        "Definir critérios e formas de uso dos padrões e/ou ativos;",
        "Usar os padrões e/ou ativos na execução das práticas de Cliente e"
            "Mercado e realimentar as lições aprendidas e base histórica de"
            "desempenho;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesCM",
        "QtdeNãoConformidadesResolvidasCM",
        "%ItensAuditadosXNãoConformes",
        "%ItensPlanAuditoriaXAuditados"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "CM.E5b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que seja feita a identificação, análise,"
              "priorização e execução de melhorias nos padrões para execução das"
              "práticas da competência de Cliente e Mercado. Deve-se considerar na"
              "identificação e análises, mas não restrito a, as lições aprendidas e base"
              "histórica de desempenho. Após análise, estas melhorias devem ser"
              "priorizadas e selecionadas para implementação nos padrões da unidade"
              "de negócio. As melhorias selecionadas devem ser implementadas de"
              "forma sistemática observando-se o comportamento da mudança,"
              "especialmente em relação à melhoria do desempenho. A melhoria"
              "implementada, se decidida sua continuidade, deve ser institucionalizada"
              "e incorporada aos padrões (vide CM.E5a). As mudanças nos padrões"
              "devem ser comunicadas às pessoas envolvidas e interessadas e"
              "mecanismos de transição dos padrões estabelecidos.",
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
        "QtdeNãoConformidadesCM",
        "QtdeNãoConformidadesResolvidasCM",
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
