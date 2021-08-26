Algoritmo "Downfall of Soralia"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Bruno Correia da Silva 
// Descrição   : RPG de texto
// Autores    : Guilherme H. e Matheus
// Data atual  : 24/08/2021

Var  // Seção de Declarações das variáveis
Start: logico
Menu_jogo: inteiro

// Em relação ao JOGADOR:
PV, PM, Pocao_PV, Pocao_PM, Pocao_Esp, Ataque, Defesa, Acao, Turno_Buff, Turno_Debuff: Inteiro
Buff,Debuff: logico


// Em relação aos INIMIGOS:
Nome_Inimigo: caractere
PV_Inimigo, PM_Inimigo, Ataque_Inimigo, Defesa_Inimigo, Turno_Debuff_Inimigo: Inteiro
Debuff_Inimigo: logico

// Em relação as lutas e dialogos variados:
Batalha: Logico
OpcaoI, OpcaoII, OpcaoIII, FraseI, FraseII, FraseIII, Texto_Btlh, Texto_Info: caractere
N_aleatorio: inteiro

// Em relação ao FINAL BOSS:


Inicio  // Seção de Comandos, procedimento, funções, operadores, etc...
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

// ================================= TUTORIAL =================================
caso 1
 escreval("A partir deste ponto vai aparecer o tutorial de como jogar.")
  // inimigo introdutorio com a explicações de macnicas do jogo; Servo do Mago das trevas

// =================================== JOGO ===================================
caso 2
 escreval("A partir deste ponto vai iniciar o jogo.")
  // Boss 1; Mago Elemental da Terra
  // Boss 2; Maga Elemental da Agua
  // Boss 3; Mago Elemental do Vento
  // Final Boss; Mago das Trevas
  // Really Final Boss; Entidade das trevas
 
 
// =================================== SAIR ===================================
caso 3
 Fimalgoritmo

// =================================== TESTE ===================================
caso 4
 escreval("Iniciando versão teste...")

// -=-=- DEFINIÇÃO DAS VARIAVEIS USADAS NA BATALHA -=-=- XXXXXXXXXXXXXXXXXXXXXXX
 PV <- 50
 PM <- 27
 Batalha <- Verdadeiro
 Repita
// -=-=- TEXTO DE BATALHA -=-=-                   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  se Batalha = falso entao // TEXTO DE INICIO DA BATALHA COM ARTE ASCII
   escreval(Texto_Btlh, "TESTE Btlh")
   Batalha <- Verdadeiro
  senao // TEXTO ALEATORIO QUE INDICA O COMEÇO DE CADA TURNO
   aleatorio 1, 3
   leia(N_aleatorio)
   aleatorio off
   escolha(N_aleatorio)
   caso 1
      escreval(fraseI, "TESTE 1")
   caso 2
      escreval(fraseII, "TESTE 2")
   caso 3
      escreval(fraseIII, "TESTE 3")
   fimescolha
  fimse
// -=-=- SEU TURNO -=-=-                          XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 //Reseta alguns atributos para evitar acumulos e recupera PV e PM
  ataque <- 0
  defesa <- 0
  PM <- PM + 3
  se Buff = verdadeiro entao
   PV <- PV + 5
   PM <- PM + 3
  fimse
 //Opções de ação e """Hud""" (eu planejo deixar ela toda bonitona)
  escreval("")
  escreval(" PV: ", PV, "/50")
  escreval(" PM: ", PM, "/30")
  escreval("")
  escreval("O que você deseja fazer?")
  escreval("1 - Atacar")
  escreval("2 - Magia")
  escreval("3 - Defender")
  escreval("4 - Itens")
  escreval("5 - Observar")
  escreva("Ação: ")
  leia(Acao)
  escreval("")
  escolha(Acao)
//ATAQUE
  caso 1
   escreval("Ataque")
   ataque <- 10
   escreval("TEXTO") //Narra ataque
//MAGIA
  caso 2
   escreval("Magia")
   se PM < 5 entao
    escreval("Mana insufisiente, o ataque falhou")
   senao
    escreval("PM: ", PM, "/30")
    escreval("Qual magia você deseja usar?")
    escreval("1 - ??? (-? PM)")
    escreval("2 - Escudo de fogo (-? PM)")
    escreval("3 - Tonado de Fogo (-? PM)")
    escreval("4 - Cruz de Fogo Sagrada (-? PM)")
    escreva("Ação: ")
    leia(Acao)
    escreval("")
    escolha(Acao)
    caso 1
     se PM < 10 entao
      escreval("Mana insufisiente, o ataque falhou")
     senao
      //Efeito da magia
      escreval("TEXTO 2")  //Narra a magia
     fimse
     escreval("TEXTO 1")
    caso 2
     se PM < 10 entao
      escreval("Mana insufisiente, o ataque falhou")
     senao
      //Efeito da magia
      escreval("TEXTO 2")  //Narra a magia
     fimse
    caso 3
     se PM < 5 entao
      escreval("Mana insufisiente, o ataque falhou")
     senao
      //Efeito da magia
      escreval("TEXTO 3")  //Narra a magia
     fimse
    caso 4
     se PM < 5 entao
      escreval("Mana insufisiente, o ataque falhou")
     senao
      //Efeito da magia
      escreval("TEXTO 4")  //Narra a magia
     fimse
    fimescolha
   fimse
// DEFESA
  caso 3
   escreval("Defesa")
   defesa <- 10
   escreval("TEXTO") //Narra defesa
// ITENS
  caso 4
   escreval("Itens")
   escreval("Você possui ", Pocao_PV, " poção(ões) de cura, ", Pocao_PM, " poção(ões) de mana e ", Pocao_Esp, " poção(ões) especiais.")
   escreval("Você deseja ultilizar alguma?")
   escreval("1 - Cura")
   escreval("2 - Mana")
   escreval("3 - Especial")
   escreval("4 - Não usar nahuma")
   escreva("Qual você deseja uasr: ")
   leia(Acao)
   escolha(Acao)
   caso 1
    se Pocao_PV > 0 entao
     PV <- PV + 15
     escreval("TESTE 1")
    senao
     escreval("Você não nenhuma poção de vida")
    fimse
   caso 2
    se Pocao_PM > 0 entao
     PM <- PM + 10
     escreval("TESTE 2")
    senao
     escreval("Você não nenhuma poção de mana")
    fimse
   caso 3
    se Pocao_Esp > 0 entao
     Buff <- verdadeiro
     escreval("TESTE 3")
    senao
     escreval("Você não nenhuma poção especial")
    fimse
   caso 4
    escreval("Enquanto você checa seus intens seu oponente aproveita sua brecha para atacar")
   fimescolha
//Observar
  caso 5
   escreval("observar")
   escreval(Texto_info)
   escreval("Enquanto você observava a situação seu oponente aproveita sua brecha para atacar")
//Opção invalida
  outrocaso
     escreval("Opção invalida")
  fimescolha
// TURNO DO OPONENTE                       XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

 ate PV_Inimigo <= 0

 
Fimalgoritmo
