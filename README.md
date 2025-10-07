# Projeto - Cap 7 - Decolando com ciências de dados
LucasHidekiOliveiraKoyama_RM566925_fase2_cap7

Cada etapa é um subtitulo, com a descrição sendo o entregável da etapa.
NOTA: este projeto teve ajuda do chatGPT para as análises dos passos 3 e 4.
[**Github do projeto**](https://github.com/lucasKoyama/FIAP-Decola-ci-ncia-de-dados)

## 1. Pesquise nas seguintes fontes de dados públicos, dados relacionados ao agronegócio:
Etapa 1, **pesquisei na CONAB** (Companhia Nacional de Abastecimento), https://portaldeinformacoes.conab.gov.br/precos-minimos.html

Com os filtros aplicados:
1. Produto: "Café Arábica";
2. UF/Regiões amparadas: Todas UFs;
3. Ano inicial: 2023;
4. Ano final: 2025.

## 2. Crie uma base de dados em Excel contendo, pelo menos, 30 linhas e 4 colunas, sendo as colunas:
Com a base de dados exportada (base de dados.xlsx) montei uma **tabela excel de 81 linhas (excluindo o cabeçario)**, aplicando já alguns filtros nas datas para ordem crescente, e classificando:
- Unidade de Comercialização em KG como **uma variável quantitativa discreta** pois estão representados como números inteiros, sem frações neste caso;
- Preço Mínimo como **uma variável quantitativa contínua** devido à presença de números decimais;
- Produto e UF/Regiões amparadas como **variáveis qualitativa nominal**, afinal representa apenas um nome;
- Vigência Inicial e final como **variáveis qualitativa ordinal**, já que data pode ser ordenada.

## 3. Escolha uma variável quantitativa e faça uma análise exploratória dela em R contendo:

Realizado os cálculos em R abaixo:
- As Medidas de Tendência Central;
- As Medidas de Dispersão;
- As Medidas Separatrizes;
- Uma análise gráfica.

Comentários e logs foram adicionados na análise em R para identificar cada cálculo

## 4. Escolha uma variável qualitativa e faça uma análise gráfica dela em R.
Análise feita no programa em R com o uso do boxplot para detectar possíveis outliers e distribuição dos preços, foi encontrado um valor base de aproximadamente 640, o que bate com o valor encontrado pela função min() de 637.91, um valor médio de aproximadamente de 660 que bate com a média encontrada pela função mean() de 662.04 e um valor teto de aproximadamente 680 que também bate com o valor encontrado da função max() de 684, além disso, os quartis também espelham os valores de min, média e max.
