# Skill PlayGround

Este projeto foi desenvolvido ao longo do processo seletivo da empresa 'for people'. Neste projeto, foi solicitado a mim que desenvolvesse um app que consistisse de uma tela principal com 10 cards, cada um deles levando, quando clicado, a uma tela que demonstrasse conceitos de programação com Flutter.

A arquitetura adotada neste projeto foi a arquitetura limpa (do inglês 'Clean Architecture'). Neste padrão arquitetural, os componentes do sistema são organizados em camadas abstratas concêntricas, separando as responsabilidades de cada um de acordo com o .
...

## Detalhamento de cada cartão
* cartao 1
* cartao 2
* cartao 3
* cartao 4
* cartao 5
* cartao 6 
* cartao 7
* cartao 8
* cartao 9
* Injeção de dependência com a biblioteca 'get-it'
Nesta tarefa, foi solicitado que se usasse a biblioteca 'get-it' para registrar um serviço 'Singleton' e, então, que se consumisse esse serviço em uma das telas acima. A tela escolhida para utilizar esse padrão de projeto criacional foi a tela 'Performance & Repaints'. O motivo dessa escolha se deu devido ao fato de que os objetos (cartões) construídos nessa tela (classe) estavam, em um primeiro momento, acontecendo dentro da definição da classe. Isso não é uma abordagem ideal, uma vez que fere o princípio da responsabilidade única, além de dificultar a manutenção e/ou extensão do software. Assim, optou-se por passar para a tela os cartões que esta deveria exibir **no momento de sua instanciação**. Trata-se, de forma simplificada, da definição do padrão Singleton.

## Pacotes utilizados
* [get](https://pub.dev/packages/get) -> Este pacote foi utilizado para gerenciar o estado da variável responsável por armazenar o resultado do cálculo do 45º número da sequência de Fibonacci, e então disparar a atualização da UI da tela isolate_screen.dart
* [flutter_bloc](https://pub.dev/packages/flutter_bloc) -> Este pacote foi utilizado para gerenciar o estado do contador condicional da tela bloc_screen.dart
* [get_it](https://pub.dev/packages/get_it) -> Este pacote foi utilizado para prover uma infra-estrutura que possibilitasse a injeção de dependência de um Singleton na tela performance_screen.dart.

## Desafios encontrados e soluções