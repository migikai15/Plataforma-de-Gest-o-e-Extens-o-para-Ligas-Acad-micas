# Plataforma-de-Gest-o-e-Extens-o-para-Ligas-Acad-micas

**Universidade Presbiteriana Mackenzie**  
**Faculdade de Computação e Informática**  
**Laboratório de Engenharia de Software**  
**Professor:** Gustavo Moreira Calixto  

* Gabriel Tortolio Fonseca — RA 10416751

## Sumário
1. [Introdução](#1-introdução)
2. [Definição da demanda](#2-definição-da-demanda)
3. [Requisitos](#3-requisitos)
4. [Protótipo de interface (Wireframes)](#4-protótipo-de-interface-wireframes)
5. [Modelagem leve do sistema](#5-modelagem-leve-do-sistema)
6. [Arquitetura do sistema](#6-arquitetura-do-sistema)
7. [Referências](#referências)

---

## 1. Introdução
Este documento apresenta a primeira parte do projeto desenvolvido na disciplina Laboratório de Engenharia de Software, referente à definição do produto de software, ao levantamento inicial de requisitos, à modelagem leve do sistema e à definição da arquitetura a ser adotada.

O projeto propõe o desenvolvimento de um protótipo de sistema capaz de realizar o emparelhamento automático entre voluntários e turmas de uma liga acadêmica universitária, por meio da aplicação de algoritmos de emparelhamento em grafos bipartidos, considerando restrições de horário e de disciplina/competência.

---

## 2. Definição da demanda

### 2.1 O problema ou oportunidade percebida
Nos projetos de extensão de ligas universitárias, existe a necessidade constante de coordenar alunos e voluntários para atender às demandas de diversas turmas. Esse processo envolve conciliar a disponibilidade de horários e os conhecimentos específicos de cada membro da equipe com as necessidades das aulas e mentorias oferecidas pela liga.

### 2.2 A razão ou justificativa para esta demanda
Na prática, essa solução automatizada garante a eficiência operacional das pessoas responsáveis pela alocação da equipe. Ao eliminar conflitos e otimizar a organização, o sistema ajuda a aumentar o impacto social direto das aulas e mentorias oferecidas, já que a vivência prática na presidência de uma liga universitária evidencia a grande dificuldade dessa gestão. Atualmente, a tentativa de organizar esse emparelhamento de forma manual resulta em diversos erros e constantes conflitos de horários, prejudicando a fluidez das atividades.

### 2.3 Descrição sucinta do produto de software
O produto consiste em um protótipo de sistema capaz de realizar o emparelhamento entre voluntários e turmas de forma automática, aplicando algoritmos de emparelhamento em grafos bipartidos para solucionar as múltiplas restrições de horários e disciplinas envolvidas na alocação de equipe em uma liga acadêmica.

### 2.4 Clientes, usuários e demais envolvidos/impactados
* **Cliente:** a diretoria/presidência da liga acadêmica, responsável por solicitar o sistema e definir os objetivos de gestão da equipe.
* **Usuários:** coordenadores e membros da diretoria responsáveis por organizar a escala de voluntários, que utilizarão o sistema para cadastrar dados e obter o emparelhamento.
* **Envolvidos/impactados:** os voluntários da liga, que serão alocados às turmas; os alunos das turmas e mentorias, impactados indiretamente pela qualidade e regularidade do atendimento; e demais membros da diretoria da liga, que se beneficiam da redução de conflitos operacionais.

### 2.5 Principais etapas necessárias para construir o produto
* Levantamento detalhado dos requisitos junto aos envolvidos (diretoria e voluntários da liga).
* Modelagem do problema como um grafo bipartido, definindo os critérios de compatibilidade (peso das arestas) entre voluntários e turmas.
* Definição da arquitetura do sistema e escolha das ferramentas/tecnologias de implementação.
* Desenvolvimento do algoritmo de emparelhamento e da interface de cadastro e visualização.
* Testes com dados simulados de uma liga acadêmica e ajustes de usabilidade.
* Documentação e entrega incremental do produto ao longo das iterações da disciplina.

### 2.6 Principais critérios de qualidade para o produto
* **Corretude:** o emparelhamento gerado deve respeitar todas as restrições de horário e disciplina informadas.
* **Usabilidade:** a interface deve ser simples o suficiente para uso por coordenadores sem formação técnica.
* **Desempenho:** o algoritmo deve apresentar tempo de resposta adequado ao volume de dados típico de uma liga universitária.
* **Manutenibilidade:** o código deve ser organizado de forma modular, permitindo a inclusão de novos critérios de compatibilidade no futuro.

---

## 3. Requisitos
A tabela a seguir apresenta os requisitos levantados para o produto, classificados como funcionais [RF] ou não funcionais [RNF] e ordenados por prioridade. Estes requisitos compõem o backlog do produto.

| Código | Descrição | Tipo | Prioridade |
|---|---|---|---|
| **RF01** | O sistema deve permitir o cadastro de voluntários, incluindo disponibilidade de horários e disciplinas/competências. | RF | Alta |
| **RF02** | O sistema deve permitir o cadastro de turmas/mentorias, incluindo horário, disciplina e vagas necessárias. | RF | Alta |
| **RF03** | O sistema deve executar um algoritmo de emparelhamento em grafos bipartidos para alocar voluntários às turmas compatíveis. | RF | Alta |
| **RF04** | O sistema deve considerar restrições de horário e de disciplina/competência como critérios de compatibilidade nas arestas do grafo. | RF | Alta |
| **RF05** | O sistema deve exibir o resultado do emparelhamento (quais voluntários foram alocados a quais turmas). | RF | Alta |
| **RF06** | O sistema deve permitir a edição manual de uma alocação sugerida pelo algoritmo, para ajustes pontuais. | RF | Média |
| **RF07** | O sistema deve indicar conflitos de horário ou turmas sem voluntário compatível, quando não for possível um emparelhamento completo. | RF | Média |
| **RF08** | O sistema deve permitir a exportação/visualização do quadro final de alocações. | RF | Baixa |
| **RNF01** | O sistema deve apresentar uma interface simples, utilizável por usuários sem conhecimento técnico (coordenadores da liga). | RNF | Alta |
| **RNF02** | O tempo de resposta do algoritmo de emparelhamento deve ser adequado ao volume de dados de uma liga universitária (baixa latência percebida pelo usuário). | RNF | Média |
| **RNF03** | O sistema deve ser portável, executando ao menos em ambiente desktop/local. | RNF | Média |
| **RNF04** | O código-fonte do algoritmo de emparelhamento deve ser organizado de forma a permitir manutenção e futura extensão (ex.: novos critérios de compatibilidade). | RNF | Baixa |

---

## 4. Protótipo de interface (Wireframes)
Os wireframes a seguir representam os protótipos de baixa fidelidade desenvolvidos para as principais interfaces do sistema, focando na disposição dos elementos, usabilidade e navegação do Coordenador da Liga.

### 4.1. Tela de Cadastro de Voluntários e Disponibilidade
Esta tela permite a inserção dos dados dos voluntários. Os elementos principais incluem campos para nome, seleção de disciplinas/competências e uma grade de horários interativa onde o usuário pode marcar os blocos de tempo em que está disponível.


### 4.2. Tela de Cadastro de Turmas
Interface dedicada ao registro das demandas da liga. Contém campos para o nome da turma/mentoria, a disciplina exigida, o horário específico em que a aula ocorrerá e a quantidade de vagas necessárias.

### 4.3. Tela de Execução e Resultado do Emparelhamento (Dashboard)
Esta é a tela principal de operação. Ela exibe um botão de ação primária para "Executar Emparelhamento". Após o processamento do algoritmo, a tela exibe uma matriz ou lista detalhando qual voluntário foi alocado para qual turma, destacando em cores diferentes os "Conflitos" (turmas sem voluntários compatíveis) para facilitar o ajuste manual.

<img width="1024" height="559" alt="image" src="https://github.com/user-attachments/assets/ffc0e6a3-7987-4f3a-ad38-4c79bf1c5a1f" />

---

## 5. Modelagem leve do sistema
Esta seção apresenta a modelagem leve do sistema, composta pelo modelo de casos de uso e por um modelo de domínio simplificado que representa a estrutura de grafo bipartido utilizada no emparelhamento.

### 5.1 Atores
* **Coordenador da Liga (ator principal):** membro da diretoria responsável por cadastrar voluntários e turmas, executar o emparelhamento automático e ajustar/validar o resultado.
* **Voluntário (ator de suporte):** fornece seus próprios dados de disponibilidade de horário e disciplinas/competências, que servem de entrada para o emparelhamento.

### 5.2 Casos de uso (resumidos)
* **Cadastrar Voluntário:** um Coordenador (ou o próprio Voluntário) insere no sistema os dados do voluntário, incluindo nome, disciplinas/competências e horários de disponibilidade.
* **Cadastrar Turma:** o Coordenador insere no sistema os dados de uma turma ou mentoria, incluindo disciplina, horário e número de vagas.
* **Executar Emparelhamento Automático:** o Coordenador solicita ao sistema que gere automaticamente uma alocação de voluntários às turmas cadastradas, com base nas restrições.
* **Ajustar Alocação Manualmente:** o Coordenador altera manualmente uma alocação sugerida pelo sistema.
* **Visualizar Quadro de Alocações:** o Coordenador consulta o quadro consolidado com todas as alocações vigentes.
* **Consultar Conflitos de Alocação:** o Coordenador consulta a lista de turmas que não puderam ser atendidas.

### 5.3 Diagrama de casos de uso (UML)
<img width="529" height="330" alt="image" src="https://github.com/user-attachments/assets/034857d2-d0d2-45b0-b083-5b5a5df8101f" />


### 5.4 Caso de uso detalhado: Executar Emparelhamento Automático
Este é considerado o caso de uso mais crítico do sistema, pois concentra a principal regra de negócio do produto.

* **Ator principal:** Coordenador da Liga.
* **Pré-condições:** Voluntários e turmas já cadastrados no sistema, cada um com disponibilidade de horário e disciplina/competência informados.
* **Garantia de sucesso (pós-condições):** O sistema apresenta uma alocação de voluntários às turmas que respeita as restrições, maximizando o número de turmas atendidas.

**Cenário de sucesso principal:**
1. O Coordenador da Liga seleciona a opção "Executar Emparelhamento Automático".
2. O sistema monta o grafo bipartido, representando voluntários e turmas como conjuntos de vértices.
3. O sistema calcula, para cada par compatível, o peso da aresta correspondente ao score de compatibilidade.
4. O sistema executa o algoritmo de emparelhamento sobre o grafo montado.
5. O sistema apresenta o resultado do emparelhamento.
6. O Coordenador confirma o resultado, e o sistema salva a alocação gerada.

**Extensões (cenários alternativos):**
* **3a.** Nenhum voluntário compatível é encontrado para uma turma: o sistema sinaliza essa turma na lista de conflitos.
* **4a.** Existe mais de um voluntário compatível para a mesma turma: o algoritmo prioriza a combinação que maximiza o número total de emparelhamentos.
* **6a.** O Coordenador não concorda com uma alocação sugerida: antes de confirmar, pode utilizar o caso de uso Ajustar Alocação Manualmente.

### 5.5 Modelo de domínio simplificado (grafo bipartido)
O modelo de classes simplificado a seguir apresenta as classes `Voluntario` e `Turma` (conjuntos de vértices) e a classe associativa `Alocacao` (arestas ponderadas com score de compatibilidade).

<img width="567" height="211" alt="image" src="https://github.com/user-attachments/assets/65ce1ce3-07f2-480c-8b32-ff26732a3a7c" />


---

## 6. Arquitetura do sistema
O sistema será desenvolvido seguindo uma arquitetura em camadas, no modelo cliente-servidor, separando a interface do usuário, as regras de negócio (incluindo o algoritmo de emparelhamento) e a persistência de dados.

### 6.1 Visão geral da arquitetura
<img width="576" height="184" alt="image" src="https://github.com/user-attachments/assets/8d3166dc-f3aa-408d-b0b1-b2d049d96fab" />



### 6.2 Camadas e responsabilidades
* **Camada de apresentação (Cliente Web):** interface utilizada pelo Coordenador da Liga e pelo Voluntário, implementada em HTML e JavaScript, responsável por exibir os formulários de cadastro, o quadro de alocações e os conflitos identificados.
* **Camada de aplicação/API (.NET / C#):** backend desenvolvido em C# sobre o .NET Framework, expondo uma API REST que recebe as requisições do cliente. É nesta camada que ficam as regras de negócio do sistema e a implementação do algoritmo de emparelhamento em grafos bipartidos (construção do grafo, cálculo dos pesos das arestas e execução do algoritmo de emparelhamento).
* **Camada de dados (SQL):** banco de dados relacional responsável por armazenar de forma persistente os Voluntários, as Turmas e as Alocações geradas, refletindo o modelo de domínio apresentado na Seção 5.5.

### 6.3 Ferramentas e tecnologias
* **Linguagem de programação (backend):** C#.
* **Framework:** .NET Framework, para a construção da API REST e da lógica de negócio/algoritmo de emparelhamento.
* **Linguagem de programação (frontend):** JavaScript, para a interface web consumida pelo Coordenador e pelo Voluntário.
* **Formato de troca de dados:** JSON, utilizado nas requisições e respostas entre o cliente web e a API.
* **Banco de dados:** SQL (banco de dados relacional), para persistência de voluntários, turmas e alocações.

Essa combinação de tecnologias foi escolhida por permitir uma separação clara entre a interface, a lógica de negócio (onde reside o algoritmo de emparelhamento) e a persistência de dados, facilitando a manutenção e a evolução do sistema ao longo das próximas etapas da disciplina.

---

## Referências
* PRESSMAN, R.S.; MAXIM, B.R. Engenharia de Software, uma abordagem profissional. 8ª ed. Porto Alegre: AMGH, 2016.
* WAZLAWICK, R. Engenharia de Software: conceitos e práticas. 1ª ed. Rio de Janeiro: Elsevier Campus.
