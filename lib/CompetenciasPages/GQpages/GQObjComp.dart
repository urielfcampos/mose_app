import 'package:flutter/material.dart';

generateObjetivos(String Objetivos) {}

class GQCompetencia extends StatelessWidget {
  final competencia;
  GQCompetencia({this.competencia});

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
    "GQ.1 Es": {
      "resultadosEsperados":
          "Espera-se para este objetivo que esteja definido: quais são os objetivos de"
              "negócio que se deseja alcançar, quais os riscos do negócio e qual o"
              "conjunto de indicadores (e suas metas) que irão auxiliar o"
              "monitoramento e controle da unidade de negócio. Reuniões (ou"
              "atividades similares) são realizadas com o intuito de analisar as metas e"
              "ações devem ser tomadas para o caso destas se desviarem"
              "significativamente do esperado. Possíveis melhorias (nas práticas de"
              "produção, gestão, serviços, bens, etc.) podem ser identificadas e"
              "registradas. Espera-se também para este objetivo que esteja estabelecida"
              "uma base histórica de desempenho da unidade de negócio indicando o"
              "comportamento das metas ao longo do tempo.",
      "exemploDePraticas": [
        "Definir, estabelecer e manter os objetivos do negócio;",
        "Estabelecer e manter indicadores para gestão da unidade de negócio,"
            "incluindo as metas esperadas (em intervalos de tempo);",
        "Realizar reuniões de análise crítica periodicamente (com análise dos"
            "indicadores) observando se as metas estão em seus níveis desejados;",
        "Tomar decisões com base nos indicadores;",
        "Realizar ações corretivas caso alguma meta se desvie significativamente"
            "do planejado e gerenciá-las até sua finalização;",
        "Identificar, priorizar e monitorar os riscos do negócio;",
        "Estabelecer e manter uma base de desempenho da gestão da unidade de"
            "negócio;",
        "Identificar e registrar possíveis melhorias para o negócio."
      ],
      "IndicadoresObrigatorios": [
        "%MetasAtingidas",
        "\$Entrada, \$Saída, \$Resultado"
      ],
      "OutrosIndicadores": [
        "\$EntradaPlanXExec, \$CustoPlanXExec, \$ResultadoPlanXExec",
        "%MetasAtingidasXEquipe"
      ]
    },
    "GQ.2 Ab": {
      "resultadosEsperados": "Espera-se para este objetivo que seja definida uma ou mais abordagens"
          "para a gestão das equipes que realizam a produção dos bens e/ou serviços"
          "da unidade de negócio. Todo trabalho deve ser definido (respeitando ciclos"
          "de vida da produção), estimado (tempo, custo e esforço), priorizado,"
          "distribuído e sua execução deve ser acompanhada e controlada. Deve-se"
          "considerar para o acompanhamento e controle do trabalho o uso de"
          "indicadores de gestão da produção esperados e posteriormente analisados"
          "em relação as suas metas. Durante o acompanhamento, possíveis"
          "melhorias (nas práticas, produtos, serviços, etc.) podem ser identificadas e"
          "registradas. GQ.2 se preocupa com a gestão da produção, enquanto GQ.1"
          "está relacionada com a gestão da unidade de negócio como um todo,"
          "especialmente do negócio.",
      "exemploDePraticas": [
        "Definir os bens e os serviços que serão gerados pelas equipes e as metas"
            "de produção;",
        "Acompanhar o desenvolvimento dos bens e/ou serviços periodicamente,"
            "realizando ações corretivas caso as metas não estejam sendo atingidas;",
        "Gerenciar as ações corretivas até sua conclusão;",
        "Para a produção de um bem e/ou serviço, definir o ciclo de vida de"
            "trabalho e detalhar o escopo (e/ou tarefas) até que seja possível realizar"
            "estimativas adequadas (tempo, custo e esforço);",
        "Priorizar e distribuir as tarefas para os colaboradores (e/ou equipes) e"
            "acompanhar (e controlar) sua execução;",
        "Identificar, priorizar e monitorar os riscos relacionados à gestão das"
            "equipes, se houver;",
        "Estabelecer e manter uma base de desempenho da produção para futuras"
            "análises;"
      ],
      "IndicadoresObrigatorios": [
        "%MetasAtingidas,",
        "\$Entrada, \$Saída, \$Resultado",
        "QtdeBensEntregues e/ou QtdeServiçosEntregues"
      ],
      "OutrosIndicadores": [
        "HorasProduçãoPlanXExec, %MetasAtingidasXEquipe",
        "CustoProduçãoPlanXExec, HorasProdução, CustoProdução"
      ]
    },
    "GQ.3 Os": {
      "resultadosEsperados": "Espera-se para este objetivo que sejam realizadas verificações da qualidade"
          "dos bens e/ou serviços entregues aos clientes. A verificação da qualidade"
          "pode se dar através de critérios pré-estabelecidos e/ou experiência de"
          "colaboradores. Os defeitos encontrados devem ser solucionados, desde"
          "que possível e viável. Se possível é desejável que os defeitos sejam"
          "registrados para posterior análise. A qualidade pode ser verificada antes e/"
          "ou depois da entrega ao cliente, podendo ser realizada em amostragens"
          "representativas. Os critérios que definem a qualidade podem se diferenciar"
          "dependendo do bem ou serviço produzido. Durante as verificações,"
          "possíveis melhorias (nas práticas, produtos, serviços, etc.) podem ser"
          "identificadas e devem ser registradas.",
      "exemploDePraticas": [
        "Criar checklists de auditoria;",
        "Criar questionários para verificação da qualidade ou da satisfação do"
            "cliente em relação ao bem ou serviço entregue;",
        "Auditar os bens e serviços;",
        "Aplicar os questionários aos clientes;",
        "Identificar defeitos e registrá-los;",
        "Resolver os defeitos, se possível, ou justificá-los;",
        "Analisar os defeitos encontrados e gerar possíveis melhorias para os"
            "bens, serviços ou práticas usadas na unidade organizacional."
      ],
      "IndicadoresObrigatorios": [
        "QtdeBensEntregues e/ou QtdeServiçosEntregues"
      ],
      "OutrosIndicadores": [
        "QtdeDefeitosBem e/ou QtdeDefeitosServiço",
        "QtdeRejeiçãoBem e/ou QtdeRejeiçãoServiço",
        "%DefeitosBemResolvidos e/ou %DefeitoServiçoResolvidos",
        "HorasResoluçãoDefeitos, CustoResoluçãoDefeitos"
      ]
    },
    "GQ.4 Me": {
      "resultadosEsperados": "Espera-se para este objetivo que durante a execução das práticas para a"
          "gestão da unidade de negócio (GQ.1), da gestão e produção de bens e"
          "serviços (GQ.2) e da verificação da qualidade dos bens e serviços (GQ.3)"
          "melhorias sejam identificadas e estejam registradas. Algumas destas"
          "melhorias devem ser implementadas, demonstrando a capacidade dos"
          "colaboradores da unidade de negócio em desenvolver novos métodos"
          "mais eficientes de trabalho e melhorar a qualidade dos produtos e"
          "serviços que são gerados. Espera-se também que estas melhorias"
          "implementadas sejam observadas em relação aos impactos da sua adoção."
          "A implementação da melhoria pode ser realizada pelas equipes e/ou"
          "gestores, não havendo necessidade da criação de um grupo específico"
          "para isso.",
      "exemploDePraticas": [
        "Analisar as melhorias identificadas e registradas;",
        "Priorizar e selecionar as melhorias que podem ser implementadas nas"
            "práticas de gestão, produção e verificação;",
        "Planejar a implementação das melhorias selecionadas;",
        "Implementar as melhorias selecionadas e observar o impacto de sua"
            "adoção."
      ],
      "IndicadoresObrigatorios": [
        "Vide indicadores de GQ.1, GQ.2 e GQ.3 (para observar o desempenho"
            "das melhorias implementadas)"
      ],
      "OutrosIndicadores": [
        "Vide indicadores de GQ.1, GQ.2 e GQ.3 (para observar o desempenho"
            "das melhorias implementadas)"
      ]
    },
    "GQ.5 A ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que sejam detalhadas metas temporais de"
              "produção para os bens e/ou serviços dos portfólios (ver CM.5), ou seja, as"
              "metas de produção que as equipes devem alcançar (deve ser alinhado com"
              "GQ.2). Deve-se também para este objetivo realizar o acompanhamento das"
              "metas no decorrer do tempo e realizar ações corretivas para o caso das"
              "metas não estarem sendo alcançadas.",
      "exemploDePraticas": [
        "Estudar os portfólios da unidade de negócio (definidos em CM.5);",
        "Definir indicadores e metas a serem atingidas para a produção dos bens"
            "e serviços definidos no portfólio;",
        "Analisar os indicadores de produção de bens e serviços frente às metas"
            "pré-estabelecidas;",
        "Realizar acões corretivas quando as metas não estiverem sendo"
            "alcançadas;",
        "Gerenciar as ações até sua finalização."
      ],
      "IndicadoresObrigatorios": [
        "\$EntradaBem e/ou \$EntradaServiço",
        "\$SaídaBem e/ou \$SaídaServiço",
        "\$ResultadoBem e/ou \$ResultadoServiço",
        "QtdeBensEntreguesXBem e/ou QtdeServiçsoEntreguesXServiço"
      ],
      "OutrosIndicadores": [
        "\$ResultadoBemPlanXExec e/ou \$ResultadoServiçoPlanXExec",
        "%MetasAtingidasXBem e/ou %MetasAtingidasXServiço"
      ]
    },
    "GQ.6 Ab": {
      "resultadosEsperados":
          """Espera-se para este objetivo que abordagens para a gestão da unidade de
             negócio sejam definidas em detalhes considerando aspectos como:
             organograma administrativo da unidade de negócio, especificação de suas
             diversas equipes de gestão e produção, bens e serviços fornecidos pelas
             equipes, forma de comunicação entre as equipes, interação e acordos de
             níveis operacionais entre as equipes, metas esperadas; níveis de acordo
             com clientes (se pertinente), entre outros. As diversas equipes da unidade
             de negócio devem possuir seus próprios objetivos, planos e metas
             conforme já apresentado nos objetivos GQ.1 e GQ.2. Reuniões (ou
             atividade similar) são realizadas com o intuito de analisar as metas e ações
             são tomadas quando os indicadores não cumprirem as metas prédefinidas.""",
      "exemploDePraticas": [
        """
        Estabelecer e manter o organograma da unidade de negócio;
        """,
        "Detalhar os objetivos de negócio, indicadores e metas a serem atingidas"
            "pelas diversas equipes, alinhando-as com os objetivos da unidade de"
            "negócio;",
        "Definir como a comunicação será realizada entre as equipes;",
        "Estabelecer os bens e/ou serviços que serão produzidos e fornecidos"
            "pelas equipes;",
        "Estabelecer os acordos de nível operacional (entre as equipes) e os"
            "níveis de acordos com os clientes;",
        "Realizar reuniões de análise critica periodicamente com as diversas"
            "equipes observando se as metas estão sendo atingidas e se os"
            "indicadores estão em seus níveis desejados de eficiência (representa"
            "uma extensão de GQ.1);",
        "Realizar periodicamente reuniões de diretoria com as equipes"
            "(representa uma extensão de GQ.1);",
        "Realizar ações corretivas caso alguma meta se desvie do planejado;",
        "Gerenciar as ações corretivas até sua finalização."
      ],
      "IndicadoresObrigatorios": [
        "%MetasAtingidas",
        "QtdeAcordosOperacionaisNãoCumpridos"
      ],
      "OutrosIndicadores": [
        "%MetasAtingidasXEquipe",
        "QtdeAcordosOperacionaisNãoCumpridosXEquipe"
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
