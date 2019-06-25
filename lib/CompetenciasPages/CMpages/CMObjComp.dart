import 'package:flutter/material.dart';

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
    "GQ.7 Co": {
      "resultadosEsperados":
          """Espera-se para este objetivo que sejam estabelecidos controles de qualidade
              na produção dos bens e/ou serviços. O objetivo GQ.4 verifica a qualidade
              final do bem ou serviço produzido enquanto GQ.7 estabelece esta
              verificação durante a produção. Para esta verificação, devem-se inicialmente
              identificar os itens relevantes (insumos, produtos intermediários,
              ferramentas, entre outros) utilizados e gerados pela produção e garantir a
              qualidade destes. Os itens identificados devem também ser controlados, e
              seu controle envolve estabelecer: onde estarão armazenados, quem pode ter
              acesso a eles, quem aprova, quais os critérios de qualidade esperada, e como
              será o controle de suas mudanças. Ao avaliar os itens relevantes frente aos
              critérios pré-estabelecidos, os defeitos identificados devem ser
              comunicados, de preferência, em tempo hábil para que sejam resolvidos
              antes de causar perda na qualidade do bem e/ou serviço que será entregue
              ao cliente. Caso não seja possível resolver o defeito, justificativas devem ser
              realizadas. Este objetivo parte do princípio de que problemas encontrados
              em fases iniciais da produção geram menos custos e menos desgastes com o
              cliente.""",
      "exemploDePraticas": [
        """
          Definir critérios de qualidade esperada para cada bem e/ou serviço a ser
          entregue aos clientes;
        """,
        "Identificar os itens que são relevantes (insumos, produtos intermediários,"
            "peças, dados, ferramentas, entre outros) para a produção dos bens e"
            "serviços;",
        "Estabelecer mecanismos para controlar os itens relevantes (ex:"
            "ferramentas, ambientes físicos, controle de acesso, versionamentos,"
            "controle de mudanças, quem é o “dono” do item, entre outros);",
        "Desenvolver check-lists para serem utilizados nas avaliações (auditorias);",
        "Criar critérios para verificação da qualidade dos itens relevantes e avaliálos"
            "(auditoria) frente aos critérios pré-estabelecidos;",
        "Corrigir os defeitos identificados nos itens relevantes, quando possível e"
            "pertinente e realizar análise das justificativas dos defeitos não corrigidos.",
      ],
      "IndicadoresObrigatorios": [
        "QtdeDefeitosBem e/ou QtdeDefeitosServiço",
        "QtdeRejeiçãoBem e/ou QtdeRejeiçãoServiço",
        "HorasResoluçãoDefeitos, CustoResoluçãoDefeitos"
      ],
      "OutrosIndicadores": [
        "%DefeitosBemResolvidos e/ou %DefeitoServiçoResolvidos"
      ]
    },
    "GQ.8 A ": {
      "resultadosEsperados": "Espera-se para este resultado que a unidade de negócio conheça a sua"
          "capacidade de produção e entrega dos bens e serviços, garantindo o"
          "cumprimento dos acordos. Metas de produção estabelecidas para os"
          "portfólios (GQ.5) devem estar sendo alcançadas ou trabalhadas para"
          "serem alcançadas ao longo do tempo. Para isso, deve-se ter uma visão da"
          "produção da unidade de negócio realística. A capacidade de produção"
          "também pode ser comprometida por eventos, como a interrupção do"
          "trabalho de alguma equipe. Desta forma, espera-se para este objetivo que"
          "eventos indesejáveis e comprometedores da capacidade de produção"
          "sejam identificados e que haja um planejamento prévio do que fazer no"
          "caso de sua incidência. Ou seja, devem-se ter ações preventivas para que"
          "a “maquina de produção” de bens e/ou serviços não seja interrompida."
          "Para este objetivo, espera-se também que os planos de incidência dos"
          "eventos sejam testados, quando possível.",
      "exemploDePraticas": [
        """
        Analisar a capacidade de produção de bens e serviços (considerando os
        portfólios e metas definidos em GQ.5);
        """,
        "Observar o comportamento da produção de bens e serviços e tomar"
            "ações preventivas para que as metas de produção sejam alcançadas;",
        "Gerenciar as ações preventivas da produção até sua finalização;",
        "Identificar eventos ou situações que podem interromper a produção"
            "das equipes (ex: queda de energia, falta de insumo, problemas"
            "climáticos, entre outros);",
        "Desenvolver um plano a ser seguido para o caso de ocorrência dos"
            "eventos que interrompem as equipes;",
        "Testar os planos, verificando se os mesmos funcionam adequadamente."
      ],
      "IndicadoresObrigatorios": [
        "\$EntradaBem e/ou \$EntradaServiço",
        "\$SaídaBem e/ou \$SaídaServiço",
        "\$ResultadoBem e/ou \$ResultadoServiço",
        "QtdeBensEntreguesXBem e/ou QtdeServiçsoEntreguesXServiço"
      ],
      "OutrosIndicadores": [
        "\$ResultadoBemPlanXExec e/ou \$ResultadoServiçoPlanXExec",
        "HorasProduçãoPlanXExec",
        "CustoProduçãoPlanXExec",
        "%MetasAtingidasXBem e/ou %MetasAtingidasXServiço"
      ]
    },
    "GQ.9 Es": {
      "resultadosEsperados":
          "Espera-se para este objetivo que riscos (negativos e positivos) relativos"
              "ao negócio e à produção de bens e serviços sejam identificados,"
              "quantificados (probabilidade e impacto) e priorizados. Após a"
              "priorização, um conjunto de riscos, preferencialmente os riscos que"
              "provoquem o não atendimento das metas críticas de negócio e produção,"
              "deve ser contingenciado e/ou mitigado.",
      "exemploDePraticas": [
        "Identificar, avaliar, quantificar, priorizar os riscos relacionados ao"
            "negócio e à gestão e produção de bens e serviços;",
        "Identificar ações para o contigenciamento e mitigação dos riscos,"
            "monitorando-as frente a sua efetividade, e modificá-las caso não"
            "estejam surtindo os resultados previstos;",
        "Desenvolver uma base de conhecimento em relação aos riscos"
            "identificados ao longo do tempo e às ações que foram realizadas, com"
            "o intuito de amadurecer continuamente a gestão de riscos.",
      ],
      "IndicadoresObrigatorios": ["QtdeAçõesRealizadasRisco"],
      "OutrosIndicadores": ["%AçõesRealizadasRisco"]
    },
    "GQ.E0 N": {
      "resultadosEsperados":
          "Nenhum dos objetivos de competência de Gestão e Qualidade"
              "(respeitando-se o seu perfil) é satisfeito pelas práticas executadas na"
              "unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em GQ.1 a GQ.9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em GQ.1 a GQ.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em GQ.1 a GQ.9"]
    },
    "GQ.E1 A": {
      "resultadosEsperados":
          "Espera-se para este objetivo que pelo menos um dos objetivos de"
              "competência para a dimensão de Gestão e Qualidade (respeitando-se"
              "o seu perfil) esteja sendo satisfeito pelas práticas executadas da"
              "unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em GQ.1 a GQ.9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em GQ.1 a GQ.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em GQ.1 a GQ.9"]
    },
    "GQ.E2 T": {
      "resultadosEsperados":
          "Espera-se para este objetivo que todos os objetivos da competência"
              "para a dimensão de Gestão e Qualidade (respeitando-se o seu tipo)"
              "estejam sendo satisfeitos pelas práticas executadas da unidade de"
              "negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em GQ.1 a GQ.9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em GQ.1 a GQ.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em GQ.1 a GQ.9"]
    },
    "GQ.E3a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que itens relevantes (insumos, produtos,"
              "ferramentas, documentos, entre outros) utilizados e gerados pela"
              "execução das práticas de Gestão e Qualidade estejam controlados."
              "Controlá-los envolve saber: onde estarão armazenados, quem pode ter"
              "acesso a eles, quem aprova e como será o controle de suas mudanças.",
      "exemploDePraticas": [
        "Identificar os itens que são relevantes (insumos, produtos, dados,"
            "ferramentas, documentos, entre outros) para o desenvolvimento das"
            "práticas de Gestão e Qualidade;",
        "Estabelecer mecanismos para controlar os itens relevantes (ex:"
            "ferramentas, ambientes físicos, etiquetagem, controle de acesso,"
            "versionamentos, controle de mudanças, quem é o “dono” do item,"
            "entre outros);"
      ],
      "IndicadoresObrigatorios": ["Não há"],
      "OutrosIndicadores": ["Não há"]
    },
    "GQ.E3b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que as práticas de Gestão e Qualidade (GQ.1"
              "a GQ.9, conforme o perfil da unidade de negócio) sejam auditadas"
              "observando se estão sendo executadas e se cumprem os padrões (se"
              "houver). Deve-se também considerar para este objetivo auditar os itens"
              "relevantes definidos em GQ.E3a. As auditorias envolvem observar"
              "aspectos importantes das práticas de forma mais objetiva possível e ter"
              "também insights a respeito de possíveis melhorias em sua execução.",
      "exemploDePraticas": [
        "Selecionar os padrões que devem ser seguidos;",
        "Selecionar práticas de Gestão e Qualidade que devem ser executadas;",
        "Criar critérios para a auditoria da execução das práticas de Gestão e"
            "Qualidade como: periodicidade, necessidade, padrões a serem"
            "seguidos, etc;",
        "Criar checklist de auditoria para as práticas de Gestão e Qualidade;",
        "Criar checklist de auditoria para verificar se os itens relevantes das"
            "práticas de Gestão e Qualidade seguem os padrões definidos;",
        "Executar auditorias identificando as não conformidades;",
        "Corrigir as não conformidades identificadas, se pertinente e possível;",
        "Planejar, monitorar e controlar as atividades específicas de auditoria;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesGQ",
        "QtdeNãoConformidadesResolvidasGQ"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "GQ.E4a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a execução das práticas que satisfazem a"
              "competência de Gestão e Qualidade seja planejada. Este planejamento"
              "envolve a definição de: colaboradores envolvidos, recursos necessários,"
              "custo, tempo, esforço, riscos, comunicação e necessidades de"
              "treinamento. Atividades relacionadas às auditorias (GQ.E3b) e controle"
              "dos itens relevantes (GQ.E3a) devem também ser planejados. Deve-se"
              "definir também como será realizado o monitoramento e controle da"
              "execução das práticas de Gestão e Qualidade.",
      "exemploDePraticas": [
        "Planejar esforço, tempo (cronograma) e custo, estimando as atividades"
            "e produtos que serão gerados pelas práticas de Gestão e Qualidade;",
        "Planejar os recursos humanos, suas responsabilidades, formas de"
            "comunicação e obter o comprometimento em relação ao trabalho para"
            "eles alocado na execução das práticas de Gestão e Qualidade;",
        "Planejar recursos gerais para execução das práticas de Gestão e"
            "Qualidade;",
        "Identificar e priorizar riscos relacionados às práticas de Gestão e"
            "Qualidade. Ações de contingenciamento e mitigação não são exigidas"
            "para este objetivo;",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Gestão e Qualidade;",
        "Planejar como será feita s auditoria (GQ.E3b) para garantir que todos"
            "os objetivos da competência de Gestão e Qualidade (respeitando-se o"
            "seu tipo) estejam sendo cumpridos;",
        "Planejar como será feito o controle dos itens relevantes (GQ.E3a)."
      ],
      "IndicadoresObrigatorios": [
        "%MetasAtingidas",
        "%MetasAtingidasXEquipe",
        "\$EntradasPlanXExecutada; \$SaidaPlanXExecutada",
        "\$ResultadoPlanXExecutado",
        "HorasProduçãoPlanXExecutada",
        "QtdeAcordosOperacionaisNãoCumpridos",
        "QtdeBensEntregues(e/ou QtdeServiçosEntregues)PlanXExecutados",
        "QtdeBensRejeitados(e/ou QtdeServiçosRejeitados)PlanXExecutados"
      ],
      "OutrosIndicadores": ["Não há."]
    },
    "GQ.E4b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que os parâmetros planejados para a execução"
              "das práticas de Gestão e Qualidade em GQ.E4a sejam monitorados e"
              "controlados e, ações corretivas sejam realizadas se desvios significativos"
              "forem observados.",
      "exemploDePraticas": [
        "Realizar monitoramento das atividades e parâmetros planejados em"
            "QG.E4a;",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo do planejado;",
        "Replanejar a execução das práticas de Gestão e Qualidade quando"
            "necessário;",
        "Monitorar as ação corretivas até a sua conclusão;",
        "Registrar lições aprendidas da execução das práticas de Gestão e"
            "Qualidade;",
        "Estabelecer e alimentar base de desempenho."
      ],
      "IndicadoresObrigatorios": [
        "%MetasAtingidas",
        "%MetasAtingidasXEquipe",
        "\$EntradasPlanXExecutada; \$SaidaPlanXExecutada",
        "\$ResultadoPlanXExecutado",
        "HorasProduçãoPlanXExecutada",
        "QtdeAcordosOperacionaisNãoCumpridos",
        "QtdeBensEntregues(e/ou QtdeServiçosEntregues)PlanXExecutados",
        "QtdeBensRejeitados(e/ou QtdeServiçosRejeitados)PlanXExecutados"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "GQ.E4c ": {
      "resultadosEsperados": "Espera-se para este objetivo que indicadores e metas relacionada às"
          "práticas de Gestão e Qualidade estejam estabelecidos, mantidos e"
          "utilizados. Os indicadores e metas devem representar aspectos que são"
          "relevantes para a unidade de negócio, ou seja, devem estar alinhados aos"
          "seus objetivos de negócio. Espera-se também para este objetivo que uma"
          "base de desempenho das práticas da competência de Gestão e Qualidade"
          "seja estabelecida com o intuito de ser possível analisá-la no futuro e"
          "estabelecer um conjunto de práticas padrão (ativos).",
      "exemploDePraticas": [
        "Definir os indicadores e metas de controle das práticas de Gestão e"
            "Qualidade, os responsáveis por sua análise, como serão coletados,"
            "armazenados e validados (para que representem fatos verídicos);",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Gestão e Qualidade usando os indicadores e as metas"
            "definidas (uma ampliação do objetivo GQ.E4a);",
        "Monitorar as práticas de Gestão e Qualidade em relação aos"
            "indicadores e metas e realizar ações corretivas caso se desviem do"
            "planejado (uma ampliação do objetivo GQ.E4b);",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo das metas estabelecidas (uma ampliação do objetivo"
            "GQ.E4b);",
        "Gerenciar as ações corretivas até sua finalização;",
        "Criar uma base histórica do desempenho da execução das práticas de"
            "Gestão e Qualidade;",
        "Alimentar a base histórica de desempenho com"
            "dados realistas e confiáveis."
      ],
      "IndicadoresObrigatorios": [
        "%MetasAtingidas, %MetasAtingidasXEquipe",
        "\$EntradasPlanXExecutada; \$SaidaPlanXExecutada",
        "\$ResultadoPlanXExecutado, HorasProduçãoPlanXExecutada",
        "QtdeAcordosOperacionaisNãoCumpridos",
        "QtdeBensEntregues(e/ou QtdeServiçosEntregues)PlanXExecutados",
        "QtdeBensRejeitados(e/ou QtdeServiçosRejeitados)PlanXExecutados"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "GQ.E5a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que, com base nas lições aprendidas e nas"
              "medições históricas da execução das práticas de Gestão e Qualidade"
              "(base histórica de desempenho), sejam estabelecidos padrões (e/ou"
              "ativos). Estes padrões devem ser usados e controlados e mecanismos"
              "para sua seleção e escolha, quando da necessidade da execução das"
              "práticas, devem estar claramente definidos.",
      "exemploDePraticas": [
        "Definir, estabelecer e manter padrões para a execução das práticas"
            "de Gestão e Qualidade, como por exemplo: templates, processos,"
            "orientações, métodos, ambientes de trabalho, documentos de"
            "orientação, guias, diretrizes, desempenho padrão esperado,"
            "taxonomia de riscos, base de desempenho, checklist de auditorias"
            "de processo e produto, entre outros;",
        "Estabelecer e manter um sistema para controle dos padrões e/ou"
            "ativos das práticas de Gestão e Qualidade, que envolva por exemplo:"
            "armazenamento, acesso, responsabilidade, localização, proprietário,"
            "entre outros (pode-se usar o mesmo controle definido em GQ.E3a,"
            "contudo, agora para os padrões);",
        "Definir critérios e formas de uso dos padrões e/ou ativos;",
        "Usar os padrões e/ou ativos na execução das práticas de Gestão e"
            "Qualidade e realimentar as lições aprendidas e base histórica de"
            "desempenho;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesGQ",
        "QtdeNãoConformidadesResolvidasGQ",
        "%ItensAuditadosXNãoConformes",
        "%ItensPlanAuditoriaXAuditados"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "GQ.E5b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que seja feita a identificação, análise,"
              "priorização e execução de melhorias nos padrões para execução das"
              "práticas da competência de Gestão e Qualidade. Deve-se considerar na"
              "identificação e análises, mas não restrito a, as lições aprendidas e base"
              "histórica de desempenho. Após análise, estas melhorias devem ser"
              "priorizadas e selecionadas para implementação nos padrões da unidade"
              "de negócio. As melhorias selecionadas devem ser implementadas de"
              "forma sistemática observando-se o comportamento da mudança,"
              "especialmente em relação à melhoria do desempenho. A melhoria"
              "implementada, se decidida sua continuidade, deve ser institucionalizada"
              "e incorporada aos padrões (vide GQ.E5a). As mudanças nos padrões"
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
        "QtdeNãoConformidadesGQ",
        "QtdeNãoConformidadesResolvidasGQ",
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
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
