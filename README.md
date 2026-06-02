# ISI F1 ETL Project — Processamento de Dados de Fórmula 1

Projeto académico desenvolvido no âmbito da cadeira de **Integração de Sistemas de Informação (ISI)**.

Sistema de extração, transformação e carregamento (ETL) de dados de Fórmula 1 utilizando Pentaho Kettle, gerando relatórios estruturados em HTML e XML.

## Objetivo

Demonstrar o uso de ferramentas de integração de dados e ETL para processar informações de Fórmula 1, incluindo calendário de corridas, ranking de pilotos e nacionalidades do grid.

## Tecnologias Utilizadas

- **Pentaho Kettle** — Ferramenta de ETL (Extract, Transform, Load)
- **SQL** — Processamento e consultas de dados
- **XML/HTML** — Formato de saída dos relatórios
- **CSV** — Fonte de dados estruturados

## Estrutura do Projeto

```
isi-18529-f1-etl-project/
├── dataint/                    # Transformações Kettle
│   ├── transformation_ranking.ktr          # Processa ranking de pilotos
│   ├── transformation_nationalities.ktr    # Processa nacionalidades
│   ├── get_races_info.ktr                  # Extrai informações de corridas
│   ├── htmlAsAmbient.ktr                   # Gera output em HTML
│   └── job_formula_schedule.kjb            # Job principal do Kettle
├── data/
│   ├── input/                  # Dados de entrada
│   │   ├── f1db.sql
│   │   ├── schedule.xsl
│   │   └── f1db_csv/
│   └── output/                 # Dados processados
│       ├── schedule.html
│       ├── ranking_pilotos_*.js
│       └── nationalities_*.xml
├── doc/                        # Documentação
│   └── TP1-ISI-18529.docx
└── README.md                   # Este ficheiro
```

## Fluxo de Processamento

1. **Extração** — Leitura de dados de F1 (SQL, CSV)
2. **Transformação** — Processamento e enriquecimento com Pentaho Kettle
3. **Carregamento** — Geração de relatórios em HTML, XML e JavaScript

## Funcionalidades

- Processamento automático de calendário de Fórmula 1
- Ranking de pilotos com dados actualizados
- Análise de nacionalidades do grid
- Geração de relatórios estruturados
- Integração de múltiplas fontes de dados

## Execução

Para executar o projeto, é necessário ter instalado:
- **Pentaho Kettle** (PDI - Pentaho Data Integration)
- **Base de dados compatível com SQL**

1. Abrir Pentaho Kettle
2. Executar o job principal: `dataint/job_formula_schedule.kjb`
3. Os relatórios serão gerados em `data/output/`

## Resultado

Os outputs incluem:
- `schedule.html` — Calendário estruturado em HTML
- `ranking_pilotos_*.js` — Ranking de pilotos em formato JavaScript
- `nationalities_*.xml` — Dados de nacionalidades em XML

---

Desenvolvido por Ruben Martins · nº 18529
