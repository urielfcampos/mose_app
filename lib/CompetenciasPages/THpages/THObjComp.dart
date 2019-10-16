import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

generateObjetivos(String Objetivos) {}

class THCompetencia extends StatelessWidget {
  final competencia;
  THCompetencia({this.competencia});

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
    "TH.1 Pa": {
      "resultadosEsperados":
          "Espera-se para este objetivo que todos os papéis e responsabilidades dos"
              "colaboradores da unidade de negócio do empreendimento estejam"
              "definidos, tenham sido comunicados a eles e os mesmos tenham"
              "aprovado as responsabilidades a eles atribuídas. É importante também"
              "que estejam claras para todos os colaboradores as responsabilidades de"
              "cada membro (ou de cada perfil de trabalho) para o desenvolvimento de"
              "suas atividades e a comunicação que deve ser realizada entre eles.",
      "exemploDePraticas": [
        "Definir os papéis e as responsabilidades para a execução das atividades"
            "necessárias para a gestão e a produção de bens e serviços da unidade"
            "de negócios;",
        "Comunicar os papéis e responsabilidades para cada colaborador da"
            "unidade de negócio e obter aprovação por parte dos mesmos;",
        "Realizar treinamento sobre as responsabilidades que serão assumidas"
            "para os colaboradores recém-admitidos;",
        "Definir e comunicar toda comunicação possível e necessária entre os"
            "colaboradores (ou perfis)e/ou equipes;",
        "Garantir que os colaboradores sejam comunicados e estejam cientes"
            "das mudanças que podem ocorrer relacionadas aos papéis,"
            "responsabilidades e comunicação;"
      ],
      "IndicadoresObrigatorios": ["%PessoasPapel", "CustoPapel"],
      "OutrosIndicadores": ["HorasPapel"]
    },
    "TH.2 Ne": {
      "resultadosEsperados": "Espera-se para este objetivo que as necessidades de capacitação dos"
          "colaboradores em relação às atividades que desempenham sejam"
          "identificadas e tratadas no decorrer do tempo. Para este objetivo é"
          "necessário demonstrar que as necessidades são conhecidas, contudo, não"
          "se exige que todas elas sejam resolvidas. Resolvê-las pode depender"
          "fortemente de investimentos financeiros e tempo, ficando assim a"
          "critério de seus gestores a priorização deste aspecto na unidade de"
          "negócio. Contudo, exige-se para este objetivo, no caso da não resolução,"
          "que pelo menos uma análise tenha sido feita e justificativas tenham sido"
          "formalizadas. As capacitações podem ser de diversos tipos como: cursos,"
          "auto-estudo, mentoring, coaching, seminários,workshops, estágio,"
          "simpósios, entre outros.",
      "exemploDePraticas": [
        "Mapear as habilidades necessárias para desempenhar um determinado"
            "papel na unidade de negócio;",
        "Realizar reuniões de feedback;",
        "Avaliar os colaboradores em relação às habilidades necessárias para"
            "desenvolver suas atividades;",
        "Identificar necessidades de capacitação dos colaboradores da unidade"
            "de negócio em relação às habilidades necessárias;",
        "Planejar e executar capacitações (formais ou informais) com o intuito"
            "de auxiliar a tratar as necessidades de capacitação dos colaboradores;",
        "Prover treinamentos;",
        "Comprar livros, participar de simpósios, workshops, seminários;",
        "Criar grupo de estudos;",
        "Desenvolver seminários para formação e disseminação do"
            "conhecimento entre os colaboradores;",
        "Formalizar justificativas para a não resolução de deficiências de"
            "capacitação e comunicar os envolvidos."
      ],
      "IndicadoresObrigatorios": ["HorasCapacitação", "CustoCapacitação"],
      "OutrosIndicadores": [
        "%Horas_CapacitaçãoXProdução",
        "%Custo_CapacitaçãoXProdução",
        "HorasCapacitação (XEquipe, XPapel)",
        "Custo_Capacitação (XEquipe, XPapel)"
      ]
    },
    "TH.3 Os": {
      "resultadosEsperados": "Espera-se para este objetivo que os colaboradores estejam cientes e sejam"
          "comunicados de suas metas que devem atingir e se possível dos objetivos"
          "de negócio. As metas devem estar definidas por colaborador (e/ou equipe)"
          "e um mecanismo para acompanhá-las deve ser estabelecido. Caso os"
          "colaboradores e/ou equipes não estejam cumprindo as metas préestabelecidas,"
          "ações corretivas devem ser realizadas ou as metas devem ser"
          "revistas. Pode haver uma forte sinergia entre este objetivo e GQ.2, quando"
          "as metas dos colaboradores estiverem relacionadas à produção de bens e"
          "serviços.",
      "exemploDePraticas": [
        "Comunicar os objetivos do negócio aos colaboradores que são afetados"
            "por eles;",
        "Definir, estabelecer e manter as metas a serem cumpridas pelos"
            "colaboradores e/ou equipes;",
        "Analisar as metas frente aos resultados atingidos;",
        "Analisar as metas de forma objetiva e tomar ações para corrigir desvios;",
        "Monitorar as ações corretivas até sua finalização;",
        "Ajustar os valores das metas quando se observar não ser possível atingilas,"
            "bem como quando durante um período prolongado estão sendo atingidas.",
      ],
      "IndicadoresObrigatorios": ["%MetasAtingidas"],
      "OutrosIndicadores": [
        "%MetasAtingidasXColaborador",
        "%MetasAtingidasXEquipe"
      ]
    },
    "TH.4 Aç": {
      "resultadosEsperados":
          "Espera-se para este objetivo que programas (ou ações) para a promoção"
              "da qualidade de vida e bem-estar dos colaboradores sejam"
              "desenvolvidos. Estes programas (ou ações) podem ser determinados"
              "por eventos específicos, campanhas motivacionais, bem como"
              "atividades e atitudes implementadas no dia a dia da unidade de"
              "negócio. Não há necessidade de grandes investimentos financeiros para"
              "atingir este objetivo, contudo, é necessário demonstrar através das"
              "possibilidades financeiras (e de tempo) que o bem-estar dos"
              "colaboradores é considerado com zelo.",
      "exemploDePraticas": [
        "Desenvolver campanhas de endomarketing;",
        "Implementar melhorias relacionadas à ergonomia;",
        "Realizar eventos de comemoração por metas atingidas,",
        "Realizar eventos em datas festivas, aniversários, entre outros;",
        "Desenvolver programas (ou ações) para o bem-estar físico e psíquico"
            "como: ginastica laboral, massagens, ambientes de relaxamento, entre"
            "outros;",
        "Organizar e incentivar reuniões informais entre os colaboradores (ex:"
            "happy hour, cinema, refeições comunitárias, entre outras);",
        "Desenvolver programas (ou acões) para premiação de colaboradores"
            "baseando-se no desempenho alcançado;"
      ],
      "IndicadoresObrigatorios": ["QtdeAçõesValorização"],
      "OutrosIndicadores": ["% AçõesValorizaçãoPlanXExec"]
    },
    "TH.5 Pl": {
      "resultadosEsperados": "Espera-se para este objetivo que a unidade de negócio tenha"
          "desenvolvido um roteiro para que seus colaboradores possam se inserir"
          "em um determinado ponto da carreira e ter clarezaa respeito de onde"
          "eles estarão caso desenvolvam seus talentos, habilidades e melhorem seu"
          "desempenho. Avaliações devem ser realizadas com o intuito de promover"
          "a progressão dos colaboradores no plano de cargos, carreira e salário. O"
          "mais importante para este objetivo é poder garantir que os colaboradores"
          "possam conhecer o futuro profissional que os espera caso estejam bem"
          "engajados nas atividades sob sua responsabilidade dentro da unidade de"
          "negócio.",
      "exemploDePraticas": [
        "Desenvolver, executar e atualizar planos de cargos, carreira e salário"
            "com base nas habilidades desejadas e/ou desempenho dos"
            "colaboradores;",
        "Estabelecer mecanismos para que seja possível um colaborador"
            "enxergar seu “futuro” na unidade de negócio;",
        "Medir a quantidade de demissões espontâneas relacionadas à falta de"
            "perspectiva dos colaboradores;",
        "Avaliar os colaboradores conforme critérios pré-estabelecidos;",
        "Promover a progressão dos colaboradores com base nas avaliações"
            "realizadas."
      ],
      "IndicadoresObrigatorios": ["%ColaboradoresEvoluíram", "%Turnover"],
      "OutrosIndicadores": ["%TurnoverXPapel"]
    },
    "TH.6 Pr": {
      "resultadosEsperados":
          """Espera-se para este objetivo que programas (e/ou ações) para
          capacitação profissional sejam realizados visando o aumento do
         desempenho dos colaboradores e a resolver deficiências em sua formação
          profissional. É necessário conhecer previamente as reais necessidades da
          unidade de negócio, ou seja, tudo que for planejado e executado deve
          estar atrelado a suprir uma necessidade específica. Estes programas (ou
          ações) devem visar capacitação técnica, gerencial e comportamental.
          Diferente de TH.3, exige-se para este objetivo que existam programas
          ativos para capacitação e que as necessidades estejam sendo sanadas.
          Uma necessidade pode estar inclusive relacionada ao não atingimento de
          metas. Caso o programa (ou ações) não esteja surtindo efeito em relação
          às necessidades observadas, devem-se realizar análises e haver mudança
         nas estratégias adotadas.""",
      "exemploDePraticas": [
        """
        Identificar as necessidades técnicas, de gestão e comportamentais dos
        colaboradores e equipes (fontes podem ser: reunião de feedback,
        avaliação 360 graus, problemas com metas não atingidas, problemas
        identificados em falhas dos bens e serviços, entre outros);
        """,
        "Definir programas (ou ações) para suprir as necessidades de"
            "capacitação dos colaboradores;",
        "Executar, monitorar e controlar as ações definidas nos programas;",
        "Manter histórico das capacitações realizadas;",
        "Manter materiais utilizados nas capacitações, por exemplo:"
            "apresentação, livros, ferramentas, entre outros;",
        "Desenvolver ações para incentivar os colaboradores no cumprimento"
            "das metas;",
        "Realizar ajustes no programa de capacitação, especialmente para o caso"
            "de seus objetivos não estarem sendo atingidos."
      ],
      "IndicadoresObrigatorios": [
        "HorasCapacitação",
        "CustoCapacitação",
        "%HorasCapacitaçãoXProdução",
        "%CustoCapacitaçãoXProdução"
      ],
      "OutrosIndicadores": [
        "HorasCapacitação (XEquipe, XPapel)",
        "CustoCapacitação (XEquipe, XPapel)"
      ]
    },
    "TH.7 Pa": {
      "resultadosEsperados":
          """Espera-se para este objetivo que tenha sido desenvolvida uma forma de
             realizar a distribuição da abundância gerada pela unidade de negócio
             para seus colaboradores. Entenda-se como abundância o conjunto de
             metas que foram atingidas e que superaram as expectativas de
             crescimento. A distribuição dos resultados torna os colaboradores do
             empreendimento mais dispostos a executarem cada vez melhor suas
             atividades. O cumprimento deste objetivo motiva os colaboradores a se
             desenvolvem, trazendo o crescimento também para o negócio.""",
      "exemploDePraticas": [
        """
        Planejar a distribuição de resultados alcançados pela unidade de
        negócio com base em metas pré-definidas
        """,
        "Comunicar as metas que devem ser atingidas para os colaboradores"
            "e/ou equipes para que a distribuição dos resultados seja realizada;",
        "Medir o desempenho dos colaboradores e/ou equipe ao longo do"
            "tempo;",
        "Manter histórico das capacitações realizadas;",
        "Manter materiais utilizados nas capacitações, por exemplo:"
            "apresentação, livros, ferramentas, entre outros;",
        "Realizar a distribuição dos resultados;",
      ],
      "IndicadoresObrigatorios": [
        "%\$Distribuído",
        "%ColaboradoresParticipação",
      ],
      "OutrosIndicadores": ["\$DistribuídoXPapel", "\$DistribuídoXEquipe"]
    },
    "TH.8 An": {
      "resultadosEsperados": "Para este objetivo, devem-se analisar os programas e ações estabelecidos"
          "em TH.6 em relação a sua eficiência e eficácia. Deve-se, para este"
          "objetivo, conhecer quais capacitações estão sendo mais eficientes e"
          "surtindo efeitos mais positivos em relação às necessidades que devem"
          "suprir. O retorno do investimento em qualificação deve ser observado (e"
          "se possível medido), considerando fatores como impactos na diminuição"
          "dos custos, aumento de negócios, melhoria das metas, entre outros."
          "Após as análises, deve-se decidir suspender, modificar e/ou ampliar os"
          "programas e ações estabelecidos, considerando o ROI (Retorno do"
          "Investimento) identificado. É importante para este objetivo que a mesma"
          "análise seja realizada em relação às ações socioculturais desenvolvidas"
          "em TH.4, contudo, não é obrigatório.",
      "exemploDePraticas": [
        """
        Analisar a eficácia e eficiência dos programas (ou ações) estabelecidos
        e executados na unidade de negócio;
        """,
        "Realizar mudanças nos programas de qualificação, considerando a"
            "análise de sua eficácia e eficiência;",
        "Redefinir/readaptar/ajustar programas (ou ações) de capacitação;",
        "Desenvolver e manter histórico dos resultados obtidos com a execução"
            "dos programas e ações em relação a suprir as necessidades"
            "identificadas (incluindo parâmetros como: custo, tempo, pessoas"
            "envolvidas, avaliação dos colaboradores, resultado obtido após"
            "capacitação, entre outros);",
      ],
      "IndicadoresObrigatorios": [
        "HorasCapacitação",
        "CustoCapacitação",
        "%Horas_CapacitaçãoXProdução",
        "%Custo_CapacitaçãoXProdução"
      ],
      "OutrosIndicadores": [
        "HorasCapacitação (XEquipe, XPapel)",
        "CustoCapacitação (XEquipe, XPapel)"
      ]
    },
    "TH.9 A ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a unidade de negócio realize a inclusão"
              "social de pessoas com deficiência física ou mental, respeitando no"
              "mínimo a legislação vigente.",
      "exemploDePraticas": [
        "Estudar leis para a acessibilidade;",
        "Estudar leis para inclusão social;",
        "Desenvolver ações na unidade de negócio para prover acesso às"
            "pessoas com deficiências físicas;",
        "Desenvolver ações na unidade de negócio para prover a inclusão de"
            "pessoas com deficiência física e/ou mental no mercado de trabalho;",
        "Contribuir com algum programa que apoia a inclusão de pessoas com"
            "deficiência física e mental no mercado de trabalho."
      ],
      "IndicadoresObrigatorios": ["% ColaboradoresDeficiência"],
      "OutrosIndicadores": ["não há"]
    },
    "TH.E0 N": {
      "resultadosEsperados": "Nenhum dos objetivos de competência de Talento Humano"
          "(respeitando-se o seu perfil) é satisfeito pelas práticas executadas na"
          "unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em TH.1 a TH9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em TH.1 a TH.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em TH.1 a TH.9"]
    },
    "TH.E1 A": {
      "resultadosEsperados":
          "Espera-se para este objetivo que pelo menos um dos objetivos de"
              "competência para a dimensão de Talento Humano (respeitando-se o"
              "seu perfil) esteja sendo satisfeito pelas práticas executadas da"
              "unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em TH.1 a TH9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em TH.1 a TH.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em TH.1 a TH.9"]
    },
    "TH.E2 T": {
      "resultadosEsperados":
          "Espera-se para este objetivo que todos os objetivos da competência"
              "para a dimensão de Talento Humano (respeitando-se o seu tipo)"
              "estejam sendo satisfeitos pelas práticas executadas da unidade de"
              "negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em TH.1 a TH9"],
      "IndicadoresObrigatorios": ["Vide os indicadores citados em TH.1 a TH.9"],
      "OutrosIndicadores": ["Vide os indicadores citados em TH.1 a TH.9"]
    },
    "TH.E3a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que itens relevantes (insumos, produtos,"
              "ferramentas, documentos, entre outros) utilizados e gerados pela"
              "execução das práticas de Talento Humano estejam controlados. Controlálos"
              "envolve saber: onde estarão armazenados, quem pode ter acesso a"
              "eles, quem aprova e como será o controle de suas mudanças.",
      "exemploDePraticas": [
        "Identificar os itens que são relevantes (insumos, produtos, dados,"
            "ferramentas, documentos, entre outros) para o desenvolvimento das"
            "práticas de Talento Humano;",
        "Estabelecer mecanismos para controlar os itens relevantes (ex:"
            "ferramentas, ambientes físicos, etiquetagem, controle de acesso,"
            "versionamentos, controle de mudanças, quem é o “dono” do item,"
            "entre outros);"
      ],
      "IndicadoresObrigatorios": ["Não há"],
      "OutrosIndicadores": ["Não há"]
    },
    "TH.E3b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que as práticas de Talento Humano (TH.1 a"
              "TH.9, conforme o perfil da unidade de negócio) sejam auditadas"
              "observando se estão sendo executadas e se cumprem os padrões (se"
              "houver). Deve-se também considerar para este objetivo auditar os itens"
              "relevantes definidos em TH.E3a. As auditorias envolvem observar"
              "aspectos importantes das práticas de forma mais objetiva possível e ter"
              "também insights a respeito de possíveis melhorias em sua execução.",
      "exemploDePraticas": [
        "Selecionar os padrões que devem ser seguidos;",
        "Selecionar práticas de Talento Humano que devem ser executadas;",
        "Criar critérios para a auditoria da execução das práticas de Talento"
            "Humano como: periodicidade, necessidade, padrões a serem seguidos,"
            "etc;",
        "Criar checklist de auditoria para as práticas de Talento Humano;",
        "Criar checklist de auditoria para verificar se os itens relevantes das"
            "práticas de Talento Humano seguem os padrões definidos;",
        "Executar auditorias identificando as não conformidades;",
        "Corrigir as não conformidades identificadas, se pertinente e possível;",
        "Planejar, monitorar e controlar as atividades específicas de auditoria;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesTH",
        "QtdeNãoConformidadesResolvidasTH"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "TH.E4a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a execução das práticas que satisfazem a"
              "competência de Talento Humano seja planejada. Este planejamento"
              "envolve a definição de: colaboradores envolvidos, recursos necessários,"
              "custo, tempo, esforço, riscos, comunicação e necessidades de"
              "treinamento. Atividades relacionadas às auditorias (TH.E3b) e controle"
              "dos itens relevantes (TH.E3a) devem também ser planejados. Deve-se"
              "definir também como será realizado o monitoramento e controle da"
              "execução das práticas de Talento Humano.",
      "exemploDePraticas": [
        "Planejar esforço, tempo (cronograma) e custo, estimando as atividades e"
            "produtos que serão gerados pelas práticas de Talento Humano;",
        "Planejar os recursos humanos, suas responsabilidades, formas de"
            "comunicação e obter o comprometimento em relação ao trabalho para"
            "eles alocado na execução das práticas de Talento Humano;",
        "Planejar recursos gerais para execução das práticas de Talento"
            "Humano;",
        "Identificar e priorizar riscos relacionados às práticas de Talento"
            "Humano. Ações de contingenciamento e mitigação não são exigidas"
            "para este objetivo;",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Talento Humano;",
        "Planejar como será feita s auditoria (TH.E3b) para garantir que todos"
            "os objetivos da competência de Talento Humano (respeitando-se o seu"
            "tipo) estejam sendo cumpridos;",
        "Planejar como será feito o controle dos itens relevantes (TH.E3a)."
      ],
      "IndicadoresObrigatorios": [
        "%AçõesValorizaçãoPlanejadaXExecutadas",
        "\$DistribuidoPlanXExecutado",
        "CustoCapacitaçãoPlanXExecutado",
        "HorasCapacitaçãoPlanXExecutadas",
        "QtdeAçõesValorizaçãoPlanXExecutadas"
      ],
      "OutrosIndicadores": ["Não há."]
    },
    "TH.E4b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que os parâmetros planejados para a execução"
              "das práticas de Talento Humano em TH.E4a sejam monitorados e"
              "controlados e, ações corretivas sejam realizadas se desvios significativos"
              "forem observados.",
      "exemploDePraticas": [
        "Realizar monitoramento das atividades e parâmetros planejados em"
            "THE4a;",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo do planejado;",
        "Replanejar a execução das práticas de Talento Humano quando"
            "necessário;",
        "Monitorar as ação corretivas até a sua conclusão;",
        "Registrar lições aprendidas da execução das práticas de Talento"
            "Humano;",
        "Estabelecer e alimentar base de desempenho."
      ],
      "IndicadoresObrigatorios": [
        "%AçõesValorizaçãoPlanejadaXExecutadas",
        "\$DistribuidoPlanXExecutado",
        "CustoCapacitaçãoPlanXExecutado",
        "HorasCapacitaçãoPlanXExecutadas",
        "QtdeAçõesValorizaçãoPlanXExecutadas"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "TH.E4c ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que indicadores e metas relacionada às"
              "práticas de Talento Humano estejam estabelecidos, mantidos e utilizados."
              "Os indicadores e metas devem representar aspectos que são relevantes"
              "para a unidade de negócio, ou seja, devem estar alinhados aos seus"
              "objetivos de negócio. Espera-se também para este objetivo que uma base"
              "de desempenho das práticas da competência de Talento Humano seja"
              "estabelecida com o intuito de ser possível analisá-la no futuro e"
              "estabelecer um conjunto de práticas padrão (ativos).",
      "exemploDePraticas": [
        "Definir os indicadores e metas de controle das práticas de Talento"
            "Humano, os responsáveis por sua análise, como serão coletados,"
            "armazenados e validados (para que representem fatos verídicos);",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Talento Humano usando os indicadores e as metas"
            "definidas (uma ampliação do objetivo TH.E4a);",
        "Monitorar as práticas de Talento Humano em relação aos indicadores"
            "e metas e realizar ações corretivas caso se desviem do planejado (uma"
            "ampliação do objetivo TH.E4b);",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo das metas estabelecidas (uma ampliação do objetivo"
            "TH.E4b);",
        "Gerenciar as ações corretivas até sua finalização;",
        "Criar uma base histórica do desempenho da execução das práticas de"
            "Talento Humano;",
        "Alimentar a base histórica de desempenho com dados realistas e"
            "confiáveis."
      ],
      "IndicadoresObrigatorios": [
        "%AçõesValorizaçãoPlanejadaXExecutadas",
        "\$DistribuidoPlanXExecutado",
        "CustoCapacitaçãoPlanXExecutado,HorasCapacitaçãoPlanXExecutadas",
        "QtdeAçõesValorizaçãoPlanXExecutadas",
        "%MetasAtingidasTH"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "THE.5a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que, com base nas lições aprendidas e nas"
              "medições históricas da execução das práticas de Talento Humano"
              "(base histórica de desempenho), sejam estabelecidos padrões (e/ou"
              "ativos). Estes padrões devem ser usados e controlados e mecanismos"
              "para sua seleção e escolha, quando da necessidade da execução das"
              "práticas, devem estar claramente definidos.",
      "exemploDePraticas": [
        "Definir, estabelecer e manter padrões para a execução das práticas"
            "de Talento Humano, como por exemplo: templates, processos,"
            "orientações, métodos, ambientes de trabalho, documentos de"
            "orientação, guias, diretrizes, desempenho padrão esperado,"
            "taxonomia de riscos, base de desempenho, checklist de auditorias"
            "de processo e produto, entre outros;",
        "Estabelecer e manter um sistema para controle dos padrões e/ou"
            "ativos das práticas de Talento Humano, que envolva por exemplo:"
            "armazenamento, acesso, responsabilidade, localização, proprietário,"
            "entre outros (pode-se usar o mesmo controle definido em TH.E3a,"
            "contudo, agora para os padrões);",
        "Definir critérios e formas de uso dos padrões e/ou ativos;",
        "Usar os padrões e/ou ativos na execução das práticas de Talento"
            "Humano e realimentar as lições aprendidas e base histórica de"
            "desempenho;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesTH",
        "QtdeNãoConformidadesResolvidasTH",
        "%ItensAuditadosXNãoConformes",
        "%ItensPlanAuditoriaXAuditados"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "THE.5b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que seja feita a identificação, análise,"
              "priorização e execução de melhorias nos padrões para execução das"
              "práticas da competência de Talento Humano. Deve-se considerar na"
              "identificação e análises, mas não restrito a, as lições aprendidas e base"
              "histórica de desempenho. Após análise, estas melhorias devem ser"
              "priorizadas e selecionadas para implementação nos padrões da unidade"
              "de negócio. As melhorias selecionadas devem ser implementadas de"
              "forma sistemática observando-se o comportamento da mudança,"
              "especialmente em relação à melhoria do desempenho. A melhoria"
              "implementada, se decidida sua continuidade, deve ser institucionalizada"
              "e incorporada aos padrões (vide TH.E5a). As mudanças nos padrões"
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
        "QtdeNãoConformidadesTH",
        "QtdeNãoConformidadesResolvidasTH",
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
