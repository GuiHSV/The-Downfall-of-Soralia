Algoritmo "Downfall of Soralia"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Bruno Correia da Silva
// Descrição   : RPG de texto
// Autores    : Guilherme H. e Matheus
// Data atual  : 24/08/2021

Var
// Seção de Declarações das variáveis
Start: logico
Menu_jogo: inteiro

// Em relação ao JOGADOR
PV, PM, Pocao_PV, Pocao_PM: Inteiro


// Em relação aos INIMIGOS

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
 escreval("Por favor ajuste o tamnho da janela até o titulo todo se encaixar")
 escreval("=================================================================")
 escreval(" ____    ____   _        _  __    _ ________   ___  _      _     ")
 escreval("|  _ \  / __ \ | |      | ||  \  | |\   ____| / _ || |    | |    ")
 escreval("| | \ \| /  \ || |  /\  | ||   \ | | | |___  / /_||| |    | |    ")
 escreval("| | | || |  | | \ \/  \/ / | |\ \| | |  __/ / __  || |    | |    ")
 escreval("| |_/ /| \__/ |  \  /\  /  | | \   | | |   / /  | || |___ | |___ ")
 escreval("|____/  \____/    \/  \/   |_|  \__|/__|  /_/   |_||_____||_____|")
 escreval("                             ___ ____                            ")
 escreval("                            /   \| __|                           ")
 escreval("+++++++++++++++++++++++++++ |   || _| +++++++++++++++++++++++++++")
 escreval("                            \___/|_|                             ")
 escreval("        _____    ____   ____        ___  _      _  ___           ")
 escreval("       / ____\  / __ \ |  _ \      / _ || |    | || _ \          ")
 escreval("      | |____  | /  \ || |_\ |    / /_||| |    | |||_\ \         ")
 escreval("       \____ \ | |  | || |\  /   / __  || |    | ||  __ \        ")
 escreval("        ____| || \__/ || | \ \  / /  | || |___ | || |  \ \       ")
 escreval("       \_____/  \____/ |_|  \_\/_/   |_||_____||_||_|   \_\      ")
 escreval("=================================================================")
 escreva ("                 Pressione ENTER para continuar")
 leia(Start)


escreval("MENU INTERATIVO TESTE RPG")
escreval("")
escreval("1 - TUTORIAL (necessário)")
escreval("2 - INICIO")
escreval("3 - SAIR")
escreval("4 - TESTE***")
escreval("Digite sua opção: ")
  leia(Menu_jogo)
escolha(Menu_jogo)

// ==================== TUTORIAL ====================
caso 1
 escreval("A partir deste ponto vai aparecer o tutorial de como jogar.")
  // inimigo introdutorio com a explicações de macnicas do jogo; Servo do Mago das trevas

// ==================== JOGO ====================
caso 2
 escreval("A partir deste ponto vai iniciar o jogo.")
  // Boss 1; Mago Elemental da Terra
  // Boss 2; Maga Elemental da Agua
  // Boss 3; Mago Elemental do Vento
  // Final Boss; Mago das Trevas


// ==================== SAIR ====================
caso 3
 Fimalgoritmo

// ==================== TESTE ====================
caso 4
 escreval("Iniciando versão teste...")

 fimescolha

Fimalgoritmo