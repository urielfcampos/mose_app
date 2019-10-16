import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

generateObjetivos(String Objetivos) {}

class SMACompetencia extends StatelessWidget {
  final competencia;
  SMACompetencia({this.competencia});

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
    "SA.1 A ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a unidade de negócio conheça as"
              "exigências formais para o seu funcionamento e esteja cumprindo estas"
              "exigências. Estas exigências podem ser legais ou não, dependendo do tipo"
              "de unidade de negócio. Para o caso de não cumprimento completo das"
              "exigências, deve-se demonstrar que os gestores conhecem as"
              "irregularidades e haja justificativas para seu não cumprimento.",
      "exemploDePraticas": [
        "Manter regularizados e atualizados: contratos sociais, alvarás de"
            "funcionamento, CNPJs, contas bancárias, documentos contábeis,"
            "certidões fiscais, entre outros. O que deve ser mantido"
            "regularizado irá depender do tipo de negócio do empreendimento"
            "ou da unidade de negócios;",
        "Desenvolver e manter contratos com incubadoras, aceleradoras e/"
            "ou investidores quando se tratar de unidade de negócios iniciais e"
            "em desenvolvimento;",
        "Registrar e obter o comprometimento entre os colaboradores da"
            "unidade de negócio quando se tratar de unidade de negócio"
            "informal ou em fase inicial de desenvolvimento (ex: Startups);",
        "Auditar as exigências legais periodicamente com o intuito de"
            "garantir o cumprimento delas quanto a sua existência e validade;",
        "Conhecer as irregularidades e justificá-las quando não for possível"
            "saná-las."
      ],
      "IndicadoresObrigatorios": ["QtdeProblemasExigências"],
      "OutrosIndicadores": ["QtdeProblemasExigênciasResolvidos"]
    },
    "SA.2 Re": {
      "resultadosEsperados":
          "Espera-se para este objetivo que sejam identificados alguns dos resíduos"
              "produzidos pela unidade de negócio que causem impacto negativo"
              "ambiental e/ou social. Estes resíduos devem ser manejados de acordo"
              "com os procedimentos legais e ações para sua redução devem ser"
              "conhecidas e praticadas pelos colaboradores.",
      "exemploDePraticas": [
        "Identificação de resíduos que causam impacto ambiental e/ou social"
            "pela unidade de negócios;",
        "Desenvolver ou participar de programas de coleta seletiva;",
        "Destinar adequadamente os resíduos eletrônicos;",
        "Desenvolver critérios de escolha para aquisição de equipamentos;",
        "Desenvolver programas de conscientização para a redução do"
            "desperdício e consumo de energia, água, gás, etc;",
        "Desenvolver ou participar de programas de reciclagem de papel.",
      ],
      "IndicadoresObrigatorios": ["%ResíduosTiposResíduosTratados"],
      "OutrosIndicadores": [
        "%ReduçãoConsumoEnergia",
        "QtdeKilosPapelReciclagem",
        "QtdeDoaçõesEquipamentos"
      ]
    },
    "SA.3 Pr": {
      "resultadosEsperados":
          "Espera-se para este objetivo que colaboradores da unidade de negócio"
              "participem ativamente de associações (formais ou informais) que"
              "possam vir a ampliar as oportunidades de negócio do"
              "empreendimento, bem como prover a troca de conhecimentos e"
              "experiências. O cooperativismo deve ser considerado por todas as"
              "unidades de negócio, especialmente as do tipo Pequena, por terem"
              "impacto significativo em aspectos relacionados a sua própria"
              "sobrevivência. O associativismo e cooperativismo é um catalizador da"
              "melhoria do ambiente onde a unidade de negócio está inserida,"
              "tendo-se como verdade que um ambiente mais maduro trará"
              "benefícios a todas as unidades de negócio inseridas naquele"
              "ecossistema.",
      "exemploDePraticas": [
        "Participar ativamente de associações (formais e informais) tendo claros"
            "os objetivos pelos quais os colaboradores da unidade organizacional"
            "estão participando, observando os resultados atingidos com esta"
            "participação;",
        "Desenvolver ações que promovem o cooperativismo;",
        "Coordenar e participar de ações de disseminação do conhecimento"
            "(tanto técnico quanto de gestão), como por exemplo: workshops,"
            "palestras, seminários, entre outros;",
        "Cooperar com unidades de negócio similares;",
        "Promover eventos em conjunto com outras unidades de negócio."
      ],
      "IndicadoresObrigatorios": ["HorasAssociativismo"],
      "OutrosIndicadores": ["HorasAssociativismoXProdução"]
    },
    "SA.4 A ": {
      "resultadosEsperados":
          "A responsabilidade social e ações sócio-culturais são tratadas dentro"
              "da unidade de negócio. Entende-se como responsabilidade social"
              "quando a unidade de negócio, voluntariamente, contribui para uma"
              "sociedade mais justa. As ações socioculturais dizem respeito a"
              "fomentar os aspectos sociais e culturais de uma comunidade ou"
              "sociedade. Aspectos esses que organizam a vida comunitária e dão e"
              "ela significação própria."
              "A responsabilidade social e ações socioculturais devem ser tratadas"
              "sob dois aspectos: interno e externo. O interno diz respeito a como se"
              "pode melhorar a qualidade de vida dos colaboradores e o externo, em"
              "como os colaboradores podem apoiar a melhoria da qualidade de vida"
              "de outras pessoas que são externas à unidade de negócio.",
      "exemploDePraticas": [
        "Coordenar e/ou participar de eventos e grupos esportivos, musicais e"
            "sócio-culturais;",
        "Apoiar programas de inserção do jovem no mercado de trabalho;",
        "Prover vagas de trabalho para iniciantes (estagiários);",
        "Apoiar os institutos de ensino na formação de mão de obra qualificada;",
        "Coordenar e participar de campanhas humanitárias como: doação de"
            "sangue, campanha do agasalho, arrecadação de alimento, coleta de"
            "donativos, campanhas natalinas, entre outras;",
        "Apoiar treinamentos que desenvolvem habilidades nos colaboradores"
            "que vão além do utilizado na gestão e produção dos bens e serviços;",
        "Fornecer bolsas incentivando o esporte;",
        "Desenvolver projetos em conjunto com escolas e universidades;",
        "Fornecer bolsas para pesquisas científicas;",
        "Fornecer bolsas para estágio;"
      ],
      "IndicadoresObrigatorios": ["QtdeAçõesSocioCulturais"],
      "OutrosIndicadores": [
        "QtdeEstagiários",
        "QtdeAçõesSócioCulturaisPlanXExec"
      ]
    },
    "SA.5 As": {
      "resultadosEsperados": "Espera-se para este objetivo que sejam disseminadas e de conhecimento"
          "de todos os colaboradores as missões que determinam a razão da"
          "existência da unidade de negócio. Com o intuito de dar maiores"
          "esclarecimentos em relação à missão, recomenda-se também o"
          "estabelecimento de visão, princípio e valores. Espera-se também para"
          "este objetivo que sejam estabelecidos e disseminados aspectos"
          "relacionados ao tipo de cultura organizacional que a unidade de negócio"
          "adota, com o intuito de engajar todos os colaboradores em uma mesma"
          "cultura. Esta cultura pode estabelecer temas como: regras de conduta,"
          "regras de comunicação, regras de comportamento, regras de uso de"
          "recursos, regras de horários, entre outras. Deve-se garantir que a missão"
          "e a cultura sejam compreendidos pelos colaboradores da unidade de"
          "negócio.",
      "exemploDePraticas": [
        "Definir as missões, visões, princípios e valores que nortearão a"
            "existência da unidade de negócios;",
        "Desenvolver e manter o organograma da unidade de negócio;",
        "Desenvolver, manter e disseminar as regras (conduta, comunicação,"
            "comportamento, uso de recursos, horários, entre outras) que devem"
            "ser seguidas pelos colaboradores;",
        "Fomentar e disseminar a cultura organizacional baseada nas regras"
            "estabelecidas;",
        "Observar as regras da cultura organizacional que não estão sendo"
            "seguidas, analisá-las, promover a conscientização dos colaboradores"
            "quanto a elas e/ou modificando-as, se necessário."
      ],
      "IndicadoresObrigatorios": ["QtdeAçõesDisseminaçãoCultura"],
      "OutrosIndicadores": ["QtdeAçõesDisseminaçãoCulturaPlanXExec"]
    },
    "SA.6 A ": {
      "resultadosEsperados":
          """Espera-se para este objetivo que seja analisada e melhoradas
              sistematicamente a eficiência energética e hídrica do desenvolvimento
              das atividades de gestão e produção de bens e serviços na unidade de
              negócios. Espera-se também que o índice de eficiência energética seja
              um dos critérios analisados para a aquisição e troca de equipamentos.""",
      "exemploDePraticas": [
        """
        Monitorar a vida útil dos equipamentos;
        """,
        "Analisar as opções de compra de novos equipamentos considerando a"
            "eficiência energética e hídrica como um dos fatores que influenciam a"
            "compra;",
        "Manter registros de gastos com energia e água;",
        "Apoiar a implantação de fontes renováveis de energia e água;",
        "Ter programas de substituição de equipamentos, iluminação e"
            "refrigeração por equipamentos mais eficientes;",
        "Substituir equipamentos que possuem baixa eficiência energética;",
        "Implantar programa de uso de energia renovável;",
        "Implantar programas para a redução do consumo de água;",
        'Implantar programa de carona solidária.'
      ],
      "IndicadoresObrigatorios": ["\$CustoEnergia", "%ReduçãoConsumoEnergia"],
      "OutrosIndicadores": ["Não há"]
    },
    "SA.7 Os": {
      "resultadosEsperados":
          """Espera-se para este objetivo que a unidade de negócio tenha
              conhecimento dos impactos negativos que sua atividade gera ao meio
              ambiente e à sociedade, tanto direta quanto indiretamente, e que
              desenvolva ações para contigenciamento e mitigação destes impactos.
              Espera-se também observar no tempo que os impactos negativos ao meio
              ambiente e à sociedade estejam sendo reduzidos.""",
      "exemploDePraticas": [
        """
        Identificar os impactos ambientais relacionados à atividade da unidade
          de negócios, estabelecendo prioridade e planejar ações de
          contingenciamento e mitigação dos mesmos;
        """,
        "Monitorar e controlar as ações de mitigação dos impactos ambientais"
            "identificados;",
        "Apoiar programas de reflorestamento, plantio de árvores na cidade,"
            "preservação de mananciais, recuperação de áreas degradadas, entre"
            "outros;",
        "Considerar como critério de compra certificação e possibilidade de"
            "renovação dos insumos (ex: selo FSC);",
        "Realizar campanhas de redução de consumo energético e de produtos"
            "não renováveis",
        "Realizar campanhas para substituição de meios de transportes"
            "poluentes ou à base de combustíveis fósseis por outros meios de"
            "transporte menos poluentes;",
        "Realizar campanhas de carona solidária;",
        "Desenvolver programas de empreendimento “verde” e/ou carbono"
            "neutro."
      ],
      "IndicadoresObrigatorios": [
        "QtdeAçõesImpactoAmbiental",
      ],
      "OutrosIndicadores": [
        "QtdeAçõesImpactoAmbientalPlanXExec",
        "HorasAçõesImpactoAmbiental",
        "\$CustoAçõesImpactoAmbiental"
      ]
    },
    "SA.8 Ac": {
      "resultadosEsperados": "Espera-se para este objetivo que sejam identificados os fornecedores"
          "relevantes, ou seja, aqueles que têm impacto significativo na entrega dos"
          "bens e serviços produzidos pela unidade de negócio. Para estes"
          "fornecedores, devem-se estabelecer acordos (de preferencia formais), com"
          "entregas planejadas e metas a serem cumpridas. Análises periódicas"
          "devem ser realizadas nestes acordos com o intuito de garantir o"
          "cumprimento das metas pré-estabelecidas. Caso haja descumprimento"
          "significativo (impactando os negócios), deve-se estudar e priorizar a"
          "substituição do fornecedor. Com o intuito de facilitar futuras"
          "contratações, deve-se manter um histórico dos fornecedores e seu"
          "desempenho nos acordos. No caso de uma nova contratação, na qual não"
          "exista um histórico, deve-se realizar pelo menos uma pesquisa de mercado"
          "quanto à idoneidade e seriedade do fornecedor.",
      "exemploDePraticas": [
        """
        Efetuar acordos formais com fornecedores relevantes, estabelecendo os
          níveis de acordo de serviço e de entrega dos bens e/ou serviços;
        """,
        "Estabelecer e manter histórico das contratações realizadas pela unidade"
            "de negócio;",
        "Analisar a capacidade, desempenho, idoneidade e seriedade do"
            "fornecedor antes de contratá-lo;",
        "Definir regras para seleção e descarte de um fornecedor;",
        "Manter histórico das contratações relevantes efetuadas"
      ],
      "IndicadoresObrigatorios": ["QtdeAcordosFornecedoresVálidos"],
      "OutrosIndicadores": ["não há."]
    },
    "SA.9 Le": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a unidade de negócio cumpra a legislação"
              "ambiental e trabalhista exigida em relação as suas atividades, como por"
              "exemplo: normas de segurança no trabalho, normas para certificação de"
              "produtos, normas de vigilância sanitária, entre outras. Uma vez que"
              "existem diversas peculiaridades conforme o setor de atuação, os"
              "resultados esperados para este objetivo dependerão das exigências legais"
              "que se aplicarem às atividades da unidade de negócio.",
      "exemploDePraticas": [
        "Implantar e se certificar em normas como:",
        "(a) ISO14.000 - sistema de gestão ambiental que é exigido de indústrias,"
            "construtoras, etc;",
        "(b) LEED (Leadership in Energy and Environmental Design) -"
            "Certificação ambiental de edificações;",
        "(c) FSC (Forest Stewardship Council) - Certificação para manejo"
            "sustentável de produtos de origem florestal;",
        "(d) Normas ABNT para instalações, tratamento e manejo de resíduos,"
            "tratamento de Efluentes, etc. (NBR 15594-3, 10.004);",
        "(e) Normas ABNT referentes à segurança do trabalho, ergonomia, poluição"
            "sonora, trabalhos insalubres, e outras que forem aplicáveis decorrentes dos"
            "tratados da Organização Internacional do Trabalho (NR 1, NR 12, NR 17,"
            "NR 18, etc.);",
        "(f) ABNT NBR 16001 e ISO26.000 – Que trata de um sistema de gestão"
            "de responsabilidade social."
      ],
      "IndicadoresObrigatorios": ["não há."],
      "OutrosIndicadores": ["não há"]
    },
    "SA.E0 N": {
      "resultadosEsperados":
          "Nenhum dos objetivos de competência de Inovação (respeitando-se o"
              "seu perfil) é satisfeito pelas práticas executadas na unidade de"
              "negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em SA.1 a SA.9"],
      "IndicadoresObrigatorios": ["Vide as práticas citadas em SA.1 a SA.9"],
      "OutrosIndicadores": ["Vide as práticas citadas em SA.1 a SA.9"]
    },
    "SA.E1 A": {
      "resultadosEsperados":
          "Espera-se para este objetivo que pelo menos um dos objetivos de"
              "competência para a dimensão de Inovação (respeitando-se o seu"
              "perfil) esteja sendo satisfeito pelas práticas executadas da unidade de"
              "negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em SA.1 a SA.9"],
      "IndicadoresObrigatorios": ["Vide as práticas citadas em SA.1 a SA.9"],
      "OutrosIndicadores": ["Vide as práticas citadas em SA.1 a SA.9"]
    },
    "SA.E2 T": {
      "resultadosEsperados":
          "Espera-se para este objetivo que todos os objetivos da competência"
              "para a dimensão de Inovação (respeitando-se o seu tipo) estejam"
              "sendo satisfeitos pelas práticas executadas da unidade de negócio.",
      "exemploDePraticas": ["Vide as práticas citadas em SA.1 a SA.9"],
      "IndicadoresObrigatorios": ["Vide as práticas citadas em SA.1 a SA.9"],
      "OutrosIndicadores": ["Vide as práticas citadas em SA.1 a SA.9"]
    },
    "SA.E3a ": {
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
    "SA.E3b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que as práticas de Inovação (SA.1 a SA.9,"
              "conforme o perfil da unidade de negócio) sejam auditadas observando se"
              "estão sendo executadas e se cumprem os padrões (se houver). Deve-se"
              "também considerar para este objetivo auditar os itens relevantes"
              "definidos em SA.E3a. As auditorias envolvem observar aspectos"
              "importantes das práticas de forma mais objetiva possível e ter também"
              "insights a respeito de possíveis melhorias em sua execução.",
      "exemploDePraticas": [
        "Selecionar os padrões que devem ser seguidos;",
        "Selecionar práticas de Inovação que devem ser executadas;",
        "Criar critérios para a auditoria da execução das práticas de Inovação"
            "como: periodicidade, necessidade, padrões a serem seguidos, etc;",
        "Criar checklist de auditoria para as práticas de Inovação;",
        "Criar checklist de auditoria para verificar se os itens relevantes das"
            "práticas de Inovação seguem os padrões definidos;",
        "Executar auditorias identificando as não conformidades;",
        "Corrigir as não conformidades identificadas, se pertinente e possível;",
        "Planejar, monitorar e controlar as atividades específicas de auditoria;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesSA",
        "QtdeNãoConformidadesResolvidasSA",
        "QtdeProblemasExigenciasFuncionamento"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "SA.E4a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que a execução das práticas que satisfazem a"
              "competência de Inovação seja planejada. Este planejamento envolve a"
              "definição de: colaboradores envolvidos, recursos necessários, custo,"
              "tempo, esforço, riscos, comunicação e necessidades de treinamento."
              "Atividades relacionadas às auditorias (SA.E3b) e controle dos itens"
              "relevantes (SA.E3a) devem também ser planejados. Deve-se definir"
              "também como será realizado o monitoramento e controle da execução"
              "das práticas de Inovação.",
      "exemploDePraticas": [
        "Planejar esforço, tempo (cronograma) e custo, estimando as atividades"
            "e produtos que serão gerados pelas práticas de Inovação;",
        "Planejar os recursos humanos, suas responsabilidades, formas de"
            "comunicação e obter o comprometimento em relação ao trabalho para"
            "eles alocado na execução das práticas de Inovação;",
        "Planejar recursos gerais para execução das práticas de Inovação;"
            "Identificar e priorizar riscos relacionados às práticas de Inovação."
            "Ações de contingenciamento e mitigação não são exigidas para este"
            "objetivo;",
        "Planejar como será realizado o monitoramento e controle da execução"
            "das práticas de Inovação;",
        "Planejar como será feita s auditoria (SA.E3b) para garantir que todos"
            "os objetivos da competência de Inovação (respeitando-se o seu tipo)"
            "estejam sendo cumpridos;",
        "Planejar como será feito o controle dos itens relevantes (SA.E3a)."
      ],
      "IndicadoresObrigatorios": [
        "CustoReduçãoEnergiaPlanXExecutado",
        "HorasAçõesImpactosAmbientaisPlanXExecutada",
        "HorasAssociativismoPlanXExecutada",
        "QtdeAçõesDisseminaçãoCulturaPlanXExecutada",
        "QtdeAçõesImpactosAmbientaisPlanXExecutada",
        "QtdeAçõesSocioCulturaisPlanXExecutada",
        "QtdeResidutosTratadosPlanXExecutado"
      ],
      "OutrosIndicadores": ["Não há."]
    },
    "SA.E4b ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que os parâmetros planejados para a execução"
              "das práticas de Inovação em SA.E4a sejam monitorados e controlados e,"
              "ações corretivas sejam realizadas se desvios significativos forem"
              "observados.",
      "exemploDePraticas": [
        "Realizar monitoramento das atividades e parâmetros planejados em"
            "SA.E4a;",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo do planejado;",
        "Replanejar a execução das práticas de Inovação quando"
            "necessário;",
        "Monitorar as ação corretivas até a sua conclusão;",
        "Registrar lições aprendidas da execução das práticas de Inovação",
        "Estabelecer e alimentar base de desempenho."
      ],
      "IndicadoresObrigatorios": [
        "CustoReduçãoEnergiaPlanXExecutado",
        "HorasAçõesImpactosAmbientaisPlanXExecutada",
        "HorasAssociativismoPlanXExecutada",
        "QtdeAçõesDisseminaçãoCulturaPlanXExecutada",
        "QtdeAçõesImpactosAmbientaisPlanXExecutada",
        "QtdeAçõesSocioCulturaisPlanXExecutada",
        "QtdeResidutosTratadosPlanXExecutado"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "SA.E4c ": {
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
            "(uma ampliação do objetivo SA.E4a)",
        "Monitorar as práticas de Inovação em relação aos indicadores e metas"
            "e realizar ações corretivas caso se desviem do planejado (uma"
            "ampliação do objetivo SA.E4b);",
        "Identificar e realizar ações corretivas quando houver algum desvio"
            "significativo das metas estabelecidas (uma ampliação do objetivo"
            "SA.E4b); Gerenciar as ações corretivas até sua finalização;",
        "Criar uma base histórica do desempenho da execução das práticas de"
            "Talento Humano;",
        "Alimentar a base histórica de desempenho com dados realistas e"
            "confiáveis."
      ],
      "IndicadoresObrigatorios": [
        "CustoReduçãoEnergiaPlanXExecutado",
        "HorasAçõesImpactosAmbientaisPlanXExecutada",
        "HorasAssociativismoPlanXExecutada",
        "QtdeAçõesDisseminaçãoCulturaPlanXExecutada",
        "QtdeAçõesImpactosAmbientaisPlanXExecutada",
        "QtdeAçõesSocioCulturaisPlanXExecutada",
        "QtdeResidutosTratadosPlanXExecutado"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "SA.E5a ": {
      "resultadosEsperados":
          "Espera-se para este objetivo que, com base nas lições aprendidas e nas"
              "medições históricas da execução das práticas de Inovação (base"
              "histórica de desempenho), sejam estabelecidos padrões (e/ou ativos)."
              "Estes padrões devem ser usados e controlados e mecanismos para sua"
              "seleção e escolha, quando da necessidade da execução das práticas,"
              "devem estar claramente definidos.",
      "exemploDePraticas": [
        "Definir, estabelecer e manter padrões para a execução das práticas"
            "de Inovação, como por exemplo: templates, processos,"
            "orientações, métodos, ambientes de trabalho, documentos de"
            "orientação, guias, diretrizes, desempenho padrão esperado,"
            "taxonomia de riscos, base de desempenho, checklist de auditorias"
            "de processo e produto, entre outros;",
        "Estabelecer e manter um sistema para controle dos padrões e/ou"
            "ativos das práticas de Inovação, que envolva por exemplo:"
            "armazenamento, acesso, responsabilidade, localização, proprietário,"
            "entre outros (pode-se usar o mesmo controle definido em SA.E3a,"
            "contudo, agora para os padrões);",
        "Definir critérios e formas de uso dos padrões e/ou ativos;",
        "Usar os padrões e/ou ativos na execução das práticas de Inovação"
            "e realimentar as lições aprendidas e base histórica de desempenho;"
      ],
      "IndicadoresObrigatorios": [
        "QtdeNãoConformidadesSA",
        "QtdeNãoConformidadesResolvidasSA",
        "%ItensAuditadosXNãoConformes",
        "%ItensPlanAuditoriaXAuditados"
      ],
      "OutrosIndicadores": ["Não há"]
    },
    "SA.E5b ": {
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
          "SA.E5a). As mudanças nos padrões devem ser comunicadas às pessoas"
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
        "QtdeNãoConformidadesSA",
        "QtdeNãoConformidadesResolvidasSA",
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
