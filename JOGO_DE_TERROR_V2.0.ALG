Algoritmo "Jogo_de_Terror_V2.0"

Var

   a: inteiro
   opcao: logico // atribuido a botao_titulo
   time: inteiro
   opcao2: inteiro
   status_global: logico // diz para a gameplay se é verdadeira p/ funcionar
   b: logico //usado no dialogo 1
   andar, andarM: inteiro //antes ele tava dentro de uma função, agora eu o troquei p/ que ficasse como uma var UNIVERSAL
                  // Mostra o monstro andando
   porta: inteiro // ler na GAMEPLAY procedimento caso 5
   //----------------------------------------------------------------
   //                Procedimento de mostrar TELA DE LOGOS 1(cutscene)
   //----------------------------------------------------------------

procedimento mostrar_logo1
var
   cont: inteiro
inicio
   cont <- 2

   // Primeiro escreve, depois espera (LEMBRAR DISSO)
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("                        -PEDRO APRESENTA-               ")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("")

   enquanto (cont > 0) faca
      timer 1000
      cont <- cont - 1
      timer 0
   fimenquanto
   limpatela
fimprocedimento

// ------------------------------------------------------------
//                      --- PROCEDIMENTO LOGO 2 ---
//-------------------------------------------------------------

procedimento mostrar_logo2
var
   cont: inteiro
inicio
   cont <- 2 // Aviso de epilepsia dura 5 segundos

   escreval("----------------------------------------------------")
   escreval("                     CUIDADO                        ")
   escreval("")
   escreval("  Esse jogo possui luzes piscantes e jumpscares.    ")
   escreval("  Isso pode afetar jogadores com epilepsia.         ")
   escreval("")
   escreval("                - VOCE FOI AVISADO -                ")
   escreval("----------------------------------------------------")

   enquanto (cont > 0) faca
      timer 1000
      cont <- cont - 1
      timer 0
   fimenquanto

fimprocedimento

//----------------------------------------------------------------
//              procedimento TELA GLITH TRANSIÇÃO
//----------------------------------------------------------------



procedimento Glith_Transicao // mostra a transição com glith(pode ser
// usada varias vezes)
var
   cont: real
inicio
   limpatela

   cont <- 5

   escreval("                      @#!                 123!@#    ")
   escreval(" @!#!@#                                         ")
   escreval("                                          ")
   escreval("        EEEE  RRRR   RRRR   OOO  RRRR       ")
   escreval("        U     R   R  R   R O   O R   R      ")
   escreval("        EEE   RRRR   RRRR  O   O RRRR       ")
   escreval("        U     R  R   R  R  O   O R  R       ")
   escreval("123     EEEE  R   R  R   R  OOO  R   R     1@#!@#")
   escreval("                                          ")
   escreval("!@)!#@                                          ")
   escreval("                      @!#!@#!@#                    ")








   enquanto (cont > 0) faca
      timer 100

      cont <- cont - 1

      timer 0
   fimenquanto
fimprocedimento







//----------------------------------------------------------------
//                Procedimento de Mostrar Tela Principal
//----------------------------------------------------------------


procedimento Tela_principal //mostra tela de titulo
var

   i: inteiro
inicio

   limpatela // limpa a tela de glith

   para i de 1 ate 1 faca

      escreval("  0000000    0    000000    0    0    0   000000  00    0    ")
      escreval("  00   00   0 0   00  00   0 0   00   0   0    0       0 0   ")
      escreval("  0000000  0   0  000000  0   0  0 0  0   0    0  00  0   0  ")
      escreval("  00       00000  00      00000  0  0 0   0    0  00  00000  ")
      escreval("  00       0   0  0 0     0   0  0   00   0    0  00  0   0  ")
      escreval("  00       0   0  0  0    0   0  0    0   0    0  00  0   0  ")
      escreval("  00       0   0  0   0   0   0  0    0   000000  00  0   0  ")
      escreval("-------------------------------------------------------------")
      escreval("")
      escreval("")
      escreval("")
      escreval("")
      escreval("                     -> [1] Start Game")
      escreval("                     -> [2] Leave Game")
      escreval("")

   fimpara
fimprocedimento




//----------------------------------------------------------------
//                Funcao botoes tela Principal
//----------------------------------------------------------------

funcao botao_titulo: logico // da a funcao dos botoes para apertar
var

   sta,lea: logico
   a:inteiro

inicio

   leia(a)
   se a = 1 entao
      sta <-  verdadeiro
   senao
      sta <- falso

   fimse
   retorne sta


fimfuncao


//----------------------------------------------------------------
//                procedimento INICIAR DIALOGO 1 Jogo
//----------------------------------------------------------------

procedimento dialogo1 (sta: logico)
var

   a: inteiro

inicio
   limpatela

   enquanto b = verdadeiro faca


      se sta = verdadeiro entao



         escreval(" ___________________________________________________________ ")
         escreval("|                                                           |")
         escreval("| Desde que mimha esposa morreu naquele acidente,tenho tido |" )
         escreval("| delirios e alucinações constantes. Após algumas consultas |" )
         escreval("| médicas e algumas prescrições de remedios para a melhora  |" )
         escreval("| do meu bem estar, essas visões tem diminuido. Porém mesmo |" )
         escreval("| assim, não creio estar seguro mesmo após receber alta e   |" )
         escreval("| voltar ao trabalho. Sinto que esses delirios não são      |" )
         escreval("| simples alucinações...                                    |" )
         escreval("|___________________________________________________________|")
         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval(" [ Aperte 1 e depois ENTER para continuar ]")
      fimse

      a <- 0

      //--------------------------------------------------------
      //               Sair da cutscne -> ir para gameplay comando
      //--------------------------------------------------------

      leia(a)

      se a = 1 entao

         b <- falso

         Glith_Transicao
      senao
         escreval("")
      fimse
   fimenquanto
   
   limpatela
   
   timer 1000
   timer 0

fimprocedimento


//---------------------------------------------------------------
//             Cutscene NOITE 1 12: 00
//---------------------------------------------------------------

procedimento cutscene_horario

inicio
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("")
escreval("                            -Noite 1-                     ")

 timer 1000
 timer 0
 
 escreva("                             1")
 
 timer 1000
 timer 0
 escreva("2")
 
 timer 1000
 timer 0
 escreva(":")
 
  timer 1000
 timer 0
 
 escreva("0")
 
 timer 1000
 timer 0
 
 escreva("0")
 
 timer 2000
 timer 0
 
 limpatela
 
 timer 1000
 timer 0

 fimprocedimento

//------------------------------------------------------------
//                 procedimento JUMPSCARE
//-------------------------------------------------------------
procedimento jumpscare
var

  scare : inteiro
  
inicio

  para scare de 1 ate 6 faca
      escreval("!!! MORREU !!!")
      escreval("dojapojDWPojawdhawdhaowdhawpdh")
      escreval("      AAAAAARRRRGGHHH!!!!!!!  ")
      
      timer 100 // Pequena pausa para o olho humano ver
      limpatela
      
      escreval("################################")
      escreval("       VOCE FOI PEGO            ")
      escreval("################################")
      timer 100
      limpatela
      
      timer 0
      
   fimpara
   
   escreval("GAME OVER")


fimprocedimento



//---------------------------------------------------------
//                       GAMEPLAY
//---------------------------------------------------------

procedimento mudar_camera (jogo : logico)    //IMPORTANTE DE MAIS LEMBRA
var

   bat: inteiro
   botao: inteiro



inicio

   bat <- 100
   andarM <- 0

   enquanto (bat > 0) e (jogo = verdadeiro) faca

      andar <- randi (4) + 1 // andar entra as CAMS 1 A 4  // // CORRIGIR
      
      andarM <- andarM + randi(7) // andar entre 5 ate jumpscare
                                  // escolhe entre 0,1,2,3,4,5,6


      limpatela

      escreval(" \ ________________________________________________________/  ")
      escreval("  |    __________________________                          |  ")
      escreval("  |   | *Cameras:                |           _____________ |  ")
      escreval("  |   |--------------------------| *Controle |           | |  ")
      escreval("  |   |  1-             2-       |   porta:  |           | |  ")
      escreval("  |   |                          |        _  |           | |  ")
      escreval("  |   |                          |    5- |o| |           | |  ")
      escreval("  |   |  3-             4-       |       |_| |           | |  ")
      escreval("  |===|                          |===========|           |=|  ")
      escreval("  |   |__________________________|           |           | |  ")
      escreval("  |               |  |                       |           | |  ")
      escreval("__|_______________|  |_____________          |           | |  ")
      escreval("                 /    \            \_________|___________|_|  ")
      escreval("                |______|            \                       \ ")
      escreval("_____________________________________\                       \")
      escreval("                                                      ",bat,"%")


      leia(botao)

      escolha botao

      caso 1

         limpatela

         se (andar = 1) entao
            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:                |     _____________ |  ")
            escreval("  |   |--------------------------|     |           | |  ")
            escreval("  |   | 1                        |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |   |          esta            |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |===|                          |=====|           |=|  ")
            escreval("  |   |__________________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                                 ",bat,"%")
            bat <- bat - 3
            andarM <- andarM - 2 // AO ACERTAR A POSIÇÃO DO MONSTRO ELE REDUZ O MOVIMENTO (recompença)

         senao
            se (andar > 1) ou (andar < 1) entao //NAO TA na camera se for maior que 7(esta na 2)

               escreval(" \ __________________________________________________/  ")
               escreval("  |    __________________________                    |  ")
               escreval("  |   | *Cameras:                |     _____________ |  ")
               escreval("  |   |--------------------------|     |           | |  ")
               escreval("  |   | 1                        |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |   |         nao esta         |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |===|                          |=====|           |=|  ")
               escreval("  |   |__________________________|     |           | |  ")
               escreval("  |               |  |                 |           | |  ")
               escreval("__|_______________|  |_____________    |           | |  ")
               escreval("                 /    \            \___|___________|_|  ")
               escreval("                |______|            \                 \ ")
               escreval("_____________________________________\                 \")
               escreval("                                                 ",bat,"%")
               bat <- bat - 3

            fimse
         fimse

      caso 2

         limpatela

         se (andar > 2) ou (andar < 2) entao // NAO ESTA NA 2 (ESTA NA 1)


            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:                |     _____________ |  ")
            escreval("  |   |--------------------------|     |           | |  ")
            escreval("  |   | 2                        |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |   |         nao esta         |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |===|                          |=====|           |=|  ")
            escreval("  |   |__________________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                                 ",bat,"%")

            bat <- bat - 3

         senao
            se (andar = 2 )   entao // Esta na 2 (não esta na 1)

               escreval(" \ __________________________________________________/  ")
               escreval("  |    __________________________                    |  ")
               escreval("  |   | *Cameras:                |     _____________ |  ")
               escreval("  |   |--------------------------|     |           | |  ")
               escreval("  |   | 2                        |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |   |          esta            |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |===|                          |=====|           |=|  ")
               escreval("  |   |__________________________|     |           | |  ")
               escreval("  |               |  |                 |           | |  ")
               escreval("__|_______________|  |_____________    |           | |  ")
               escreval("                 /    \            \___|___________|_|  ")
               escreval("                |______|            \                 \ ")
               escreval("_____________________________________\                 \")
               escreval("                                                 ",bat,"%")
               bat <- bat - 3
               andarM <- andarM - 2
            fimse
         fimse


      caso 3

         limpatela

         se (andar > 3) ou (andar < 3) entao

            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:                |     _____________ |  ")
            escreval("  |   |--------------------------|     |           | |  ")
            escreval("  |   | 3                        |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |   |          nao esta        |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |===|                          |=====|           |=|  ")
            escreval("  |   |__________________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                                 ",bat,"%")
            bat <- bat - 3

         senao
            se (andar = 3) entao

               escreval(" \ __________________________________________________/  ")
               escreval("  |    __________________________                    |  ")
               escreval("  |   | *Cameras:                |     _____________ |  ")
               escreval("  |   |--------------------------|     |           | |  ")
               escreval("  |   | 3                        |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |   |          esta            |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |===|                          |=====|           |=|  ")
               escreval("  |   |__________________________|     |           | |  ")
               escreval("  |               |  |                 |           | |  ")
               escreval("__|_______________|  |_____________    |           | |  ")
               escreval("                 /    \            \___|___________|_|  ")
               escreval("                |______|            \                 \ ")
               escreval("_____________________________________\                 \")
               escreval("                                                 ",bat,"%")
               bat <- bat - 3
               andarM <- andarM - 2
            fimse
         fimse

      caso 4

         limpatela

         se (andar > 4) ou (andar < 4)  entao

            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:                |     _____________ |  ")
            escreval("  |   |--------------------------|     |           | |  ")
            escreval("  |   |4                         |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |   |         nao esta         |     |           | |  ")
            escreval("  |   |                          |     |           | |  ")
            escreval("  |===|                          |=====|           |=|  ")
            escreval("  |   |__________________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                                 ",bat,"%")
            bat <- bat - 3

         senao

            se (andar = 4) entao
               escreval(" \ __________________________________________________/  ")
               escreval("  |    __________________________                    |  ")
               escreval("  |   | *Cameras:                |     _____________ |  ")
               escreval("  |   |--------------------------|     |           | |  ")
               escreval("  |   |4                         |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |   |           esta           |     |           | |  ")
               escreval("  |   |                          |     |           | |  ")
               escreval("  |===|                          |=====|           |=|  ")
               escreval("  |   |__________________________|     |           | |  ")
               escreval("  |               |  |                 |           | |  ")
               escreval("__|_______________|  |_____________    |           | |  ")
               escreval("                 /    \            \___|___________|_|  ")
               escreval("                |______|            \                 \ ")
               escreval("_____________________________________\                 \")
               escreval("                                                 ",bat,"%")
               bat <- bat - 3
               andarM <- andarM - 2
            fimse
         fimse
         
         
        caso 5  // ERRO, TEM QUE CONCERTAR, NÃO DA PRA DIGITAR NADA SE ESTIVER FORA DOS PAREMETROS

         // controle do botao da porta
   
   se (botao = 5) entao
   
        limpatela
        
    escreval("                                  ____________________     |    ")
    escreval("                                  |                  |     |    ")
    escreval("_____________________             |                  |     |    ")
    escreval("                    /|            |                  |     |    ")
    escreval("___________________/ |            |                  |     |    ")
    escreval("                   | |            |                  |     |    ")
    escreval("                   | |            |                  |     |    ")
    escreval("-------------------| |            |                  |     |    ")
    escreval("                   | |            |                  |     |    ")
    escreval("       2-          | |============|                  |=====|    ")
    escreval("                   | |============|                  |=====|    ")
    escreval("                   | |            |                  |     |    ")
    escreval("                   | |            |                  |     |    ")
    escreval("       4-          | |____________|                  |_____|    ")
    escreval("                   | |                                     \    ")
    escreval(" __________________|/                                       \   ")
    escreval("    |                                                   ",bat,"%")

    timer 100
    timer 0
    
    limpatela
    
    escreval("                  ________________________                      ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("                  |                      |            |         ")
    escreval("__________________|                      |____________|         ")
    escreval("                                                       \",bat,"%")
    
        leia (porta)
        
        escolha porta // escolha dentro do escolha 5(para a porta/ var universal)
        
        caso 1
        se (porta = 1) entao  // fechar porta  // // ISSO AQUI É REDUNDANTE, JA TEM O CASO 1
        escreval(" fechando porta")
        fimse
        
        caso 2

        se (porta = 2) entao // ligar luz
        escreval("ligando luz")
        fimse
        
        outrocaso
        
        escreval(" Você não fez nada ")

        fimescolha
        fimse
        
        timer 1000
        timer 0
        
  limpatela
  
  escreval("                 |              |\               ")
  escreval("                 |              | \              ")
  escreval("                 |              |  \             ")
  escreval("                 |              |   \            ")
  escreval("                 |              |    \           ")
  escreval("                 |              |     \          ")
  escreval("                 |              |      \         ")
  escreval("                 |              |       \        ")
  escreval("_________________|              |        \       ")
  escreval("                  \             |         \      ")
  escreval("                   \            |          \     ")
  escreval("                    \           |           \    ")
  escreval("                     \          |            \   ")
  escreval("                      \         |             \  ")
  escreval("                       \        |              \ ")
  escreval("                        \       |        ",bat,"%")
  
  timer 300
  timer 0

  limpatela
  
  escreval("                                                 |      ")
  escreval("                                                 |      ")
  escreval("                                                 |      ")
  escreval("    _                                            |      ")
  escreval("   / |                                           |      ")
  escreval("  /_ |                                           |      ")
  escreval("  | ||                                           |      ")
  escreval("__| |/_____                                      |      ")
  escreval("  |_/|    /______________________________________|      ")
  escreval("    / \  /|                                       \     ")
  escreval("________/ |                                        \    ")
  escreval("       |  |                                         \   ")
  escreval("       |                                             \  ")
  escreval("       |                                              \ ")
  escreval("                                                       \")
  escreval("                                                ",bat,"%")
  

  timer 300
  timer 0
  
  limpatela
  
  escreval("                           __                                     ")
  escreval("                          / /|                                    ")
  escreval("                         /_/ |                                    ")
  escreval("                        |  | |                                    ")
  escreval("                        |  | |                                    ")
  escreval("                   _____|  | |_____________                       ")
  escreval("                  /     |  | |            /|                      ")
  escreval("________________ /      |  | /           / |______________________")
  escreval("                /       |__|/|          /  |                      ")
  escreval("               /            / \        /   |                      ")
  escreval("              /                       /    |                      ")
  escreval("             /                       /     |                      ")
  escreval("            /_______________________/      |                      ")
  escreval("            |                       |      |                      ")
  escreval("            |                       |      |                      ")
  escreval("            |                       |                     ",bat,"%")

   timer 300
   timer 0
  
   limpatela
   
  escreval("    |__________________________________________________________")
  escreval("   /                                                           ")
  escreval("  /              _________________                             ")
  escreval(" /              /________________/|                            ")
  escreval("/              |cameras:        | |                            ")
  escreval("               |----------------| |                            ")
  escreval("               | 1-         2-  | |                            ")
  escreval("_______________|                | |____________                ")
  escreval("               | 3-         4-  | |           /|               ")
  escreval("               |________________|/           / |               ")
  escreval("                        | |                 /  |               ")
  escreval("                       /   \               /   |               ")
  escreval("                                          /    |               ")
  escreval("_________________________________________/     |               ")
  escreval("                                         |     |               ")
  escreval("                                                       ",bat,"%")
  
    timer 300
    timer 0
  
  limpatela
  
  escreval("     |                                  |          |      |       ")
  escreval("     |                                  |          |      |       ")
  escreval("     |__________________________________|__________|______|       ")
  escreval("    /   _____________________                             \       ")
  escreval("   /   /_____________________\                             \      ")
  escreval("  /    |cameras:             |                              \     ")
  escreval(" /     |---------------------|                               \    ")
  escreval("/      | 1-           2-     |                                \   ")
  escreval("       |                     |                                 \  ")
  escreval("       | 3-           4-     |                                  \ ")
  escreval("_______|_____________________|_____                               ")
  escreval("                 / \               \                              ")
  escreval("                                    \                             ")
  escreval("                                     \                            ")
  escreval("______________________________________\                           ")
  escreval("                                      |                   ",bat,"%")
  
   timer 300
   timer 0
   
  limpatela
  
   escreval(" \ ________________________________________________________/  ")
      escreval("  |    __________________________                          |  ")
      escreval("  |   | *Cameras:                |           _____________ |  ")
      escreval("  |   |--------------------------| *Controle |           | |  ")
      escreval("  |   |  1-             2-       |   porta:  |           | |  ")
      escreval("  |   |                          |        _  |           | |  ")
      escreval("  |   |                          |    5- |o| |           | |  ")
      escreval("  |   |  3-             4-       |       |_| |           | |  ")
      escreval("  |===|                          |===========|           |=|  ")
      escreval("  |   |__________________________|           |           | |  ")
      escreval("  |               |  |                       |           | |  ")
      escreval("__|_______________|  |_____________          |           | |  ")
      escreval("                 /    \            \_________|___________|_|  ")
      escreval("                |______|            \                       \ ")
      escreval("_____________________________________\                       \")
      escreval("                                                      ",bat,"%")
  
   outrocaso
      
         limpatela

         escreval(" \ __________________________________________________/  ")
         escreval("  |    __________________________                    |  ")
         escreval("  |   | *Cameras:                |     _____________ |  ")
         escreval("  |   |--------------------------|     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |   |             ?            |     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |===|                          |=====|           |=|  ")
         escreval("  |   |__________________________|     |           | |  ")
         escreval("  |               |  |                 |           | |  ")
         escreval("__|_______________|  |_____________    |           | |  ")
         escreval("                 /    \            \___|___________|_|  ")
         escreval("                |______|            \                 \ ")
         escreval("_____________________________________\                 \")
         escreval(" *Você não fez nenhuma ação                      ",bat,"%")


      fimescolha

      timer 1500
      timer 0

      //----------------------------------------------------
      //                 jumpscare/ morte
      //----------------------------------------------------

      se (andarM >= 25) entao

         limpatela

         escreval(" \ __________________________________________________/  ")
         escreval("  |    __________________________                    |  ")
         escreval("  |   | *Cameras:                |     _____________ |  ")
         escreval("  |   |--------------------------|     |           | |  ")
         escreval("  |   |  1-             2-       |     |           | |  ")
         escreval("  |   |                          |   _ |           | |  ")
         escreval("  |   |                          |  |o||           | |  ")
         escreval("  |   |  3-             4-       |  |_||   0   0   | |  ")
         escreval("  |===|                          |=====|           |=|  ")
         escreval("  |   |__________________________|     |           | |  ")
         escreval("  |               |  |                 |           | |  ")
         escreval("__|_______________|  |_____________    |           | |  ")
         escreval("                 /    \            \___|___________|_|  ")
         escreval("                |______|            \                 \ ")
         escreval("_____________________________________\                 \")
         escreval(" *Ele te encontrou!                             ",bat,"%")

         timer 1000
         timer 0

         jumpscare
         
         interrompa //finaliza o loop da gameplay

      fimse



      se (bat <= 0) entao
         limpatela

         escreval(" \ __________________________________________________/  ")
         escreval("  |    __________________________                    |  ")
         escreval("  |   | *Cameras:                |     _____________ |  ")
         escreval("  |   |--------------------------|     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |   |   # ENERGIA CRÍTICA: 0%  |     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |===|                          |=====|           |=|  ")
         escreval("  |   |__________________________|     |           | |  ")
         escreval("  |               |  |                 |           | |  ")
         escreval("__|_______________|  |_____________    |           | |  ")
         escreval("                 /    \            \___|___________|_|  ")
         escreval("                |______|            \                 \ ")
         escreval("_____________________________________\                 \")
         escreval("                                                 ",bat,"%")
         timer 1500
         timer 0


         limpatela

         escreval("* As luzes se apagaram...")
         escreval("* Você ouve passos atrás de você.")
         timer 2000
         timer 0
      fimse
   fimenquanto


fimprocedimento






inicio
   //---------------------------------------------------------------
   //           PROGRAMA PRINCIPAL
   //---------------------------------------------------------------

   status_global <- verdadeiro
   b <- verdadeiro

   //-- mostrar logos ao entrar no jogo    (1)
   mostrar_logo1
   mostrar_logo2

   //- transição p/ tela principal                 (2)
   Glith_Transicao  //mostra a tela de erro falça

   //-tela principal                              (3)
   Tela_principal  //chama a tela de titulo

   //-escolha dos botoes                          (4)
   opcao <- botao_titulo


   //transição para o dialogo                        (5)
   Glith_Transicao // TRANSIÇÃO 2 de erro

   //dialogo 1                                         (6)
   dialogo1(opcao) // MOSTRA A OPCAO CALCULADA EM botoes_titulo
   cutscene_horario


   // GAMEPLAY

   mudar_camera(status_global)





Fimalgoritmo