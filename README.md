# Skill PlayGround

Este projeto foi desenvolvido ao longo do processo seletivo da empresa 'for people'. Neste projeto,
foi solicitado a mim que desenvolvesse um app que consistisse de uma tela principal com 10 cards,
cada um deles levando, quando clicado, a uma tela que demonstrasse conceitos de programação com
Flutter.

A arquitetura adotada neste projeto foi a arquitetura limpa (do inglês 'Clean Architecture'). Neste
padrão arquitetural, os componentes do sistema são organizados em camadas abstratas concêntricas,
separando as responsabilidades de cada uma de acordo com a 'proximidade' dos componentes com o núcleo-duro das regras de negócio da organização e da aplicação.

## Detalhamento de cada cartão

* Nesta tela, é criado um desenho na tela utilizando a classe CustomPaint do Flutter, que permite
  desenhar diferentes formas na tela, como se esta fosse um quadro branco.
* Nesta tela, é demonstrado - assim como no restante do app - a navegação utilizando o Router 2.0 do
  Flutter. Esta abordagem, diferentemente do Router 1.0 (Navigator.of(contexto).push()....) permite
  lançar mão de uma navegação declarativa em detrimento de uma imperativa. Ou seja, é possivel
  abordar a navegação como um gerenciamento de estado ao app e poder manipular a 'stack' de
  navegação, em vez de delegar tudo ao framework.
* Nesta tela, é usado o gerenciador de estado BLoC para controlar a atualização da interface de
  usuário. Neste caso específico, o contador só funciona quando o usuário pressiona o botão com
  duplo-clique (como solicitado pelas especificações por um contador condicional) e a tela só
  atualiza quando o contador está em um número par.
* Nesta tela, é utilizada a classe MethodChannel para interagir com código nativo, tanto Android
  quanto iOS. Neste exemplo em específico, foi criado um método nativo, em Kotlin e Swift, para
  retornar a versão do sistema operacional do dispositivo em uso.
* Na tela de Performance & Repaints, é utilizado o widget RepaintBoundary para demonstrar a
  possibilidade de otimização da performance do app ao limitar, na árvore de widgets, aqueles que
  serão reconstruídos.
* Na tela de Isolate, é utilizado o método compute() para fazer um cálculo computacionalmente
  complexo. No caso, foi calculado o número presente na 45ª posição da sequência de Fibonacci. Este
  método cria threads paralelas de forma embutida, de forma a otimizar o app e evitar travamentos.
* Na tela Animation Controller, é demonstrada uma animação criada com o widget AnimationController.
  Também, é sobrescrito o método 'dispose' da classe StatefulWidget para realizar o descarte do "
  controller", que, caso não seja removido, continua em execução no app causando vazamentos de
  memória.
* Na tela Stream Builder, é demonstrado como o widget StreamBuilder do Flutter fornece uma interface
  muito organizada para ouvir uma Stream e reagir à ela de acordo com o estado atual dos dados sendo
  enviados. Essas opções demonstradas, dentre outras disponíveis, foram: mostrar tela de
  carregamento, mostrar dados recebidos e mostrar tela de erro.
* A tela Slivers demonstra a utilização do widget CustomScrollView, utilizando, para a construção da
  tela, dos widgets SliverToBoxAdapter e SliverList. Trata-se de uma abordagem mais flexível e
  completa para criar diversos tipos diferentes de telas 'scrollable'.
* Injeção de dependência com a biblioteca 'get-it'
  Nesta tarefa, foi solicitado que se usasse a biblioteca 'get-it' para registrar um serviço '
  Singleton' e, então, que se consumisse esse serviço em uma das telas acima. A tela escolhida para
  utilizar esse padrão de projeto criacional foi a tela 'Performance & Repaints'. O motivo dessa
  escolha se deu devido ao fato de que os objetos (cartões) construídos nessa tela (classe) estavam,
  em um primeiro momento, acontecendo dentro da definição da classe. Isso não é uma abordagem ideal,
  uma vez que fere o princípio da responsabilidade única, além de dificultar a manutenção e/ou
  extensão do software. Assim, optou-se por passar para a tela os cartões que esta deveria exibir *
  *no momento de sua instanciação**. Trata-se, de forma simplificada, da definição do padrão
  Singleton.

## Pacotes utilizados

* [get](https://pub.dev/packages/get) -> Este pacote foi utilizado para gerenciar o estado da
  variável responsável por armazenar o resultado do cálculo do 45º número da sequência de Fibonacci,
  e então disparar a atualização da UI da tela isolate_screen.dart
* [flutter_bloc](https://pub.dev/packages/flutter_bloc) -> Este pacote foi utilizado para gerenciar
  o estado do contador condicional da tela bloc_screen.dart
* [get_it](https://pub.dev/packages/get_it) -> Este pacote foi utilizado para prover uma
  infra-estrutura que possibilitasse a injeção de dependência de um Singleton na tela
  performance_screen.dart.

## Desafios encontrados e soluções

O maior desafio encontrado ao longo da execução desta atividade foi a densidade de funcionalidades a
serem implementadas. Enquanto algumas eu já tinha utilizado antes, outras eu tive que pesquisar e
aprender como implementar.

Além disso, pode-se citar a incerteza na implementação da arquitetura solicitada. Por ser uma
abordagem flexível e que aceita adaptações, muitas vezes passei por momentos de incerteza sobre em
qual pasta incluir determinado arquivo e sobre criar ou não uma nova sub-camada.