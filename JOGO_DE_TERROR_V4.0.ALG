Algoritmo "Jogo_de_Terror_V4.0"

Var

   a: inteiro
   opcao: logico // atribuido a botao_titulo
   time: inteiro
   opcao2: inteiro
   status_global: logico // diz para a gameplay se é verdadeira p/ funcionar
   b,c: logico //usado no dialogo 1
   andar, andarM: inteiro //antes ele tava dentro de uma função, agora eu o troquei p/ que ficasse como uma var UNIVERSAL
   // Mostra o monstro andando
   porta: inteiro // ler na GAMEPLAY procedimento caso 5

   temp : inteiro    // V,3
   tempo_s: inteiro
   bateria_b : inteiro  // bug da bateria
   bateria: inteiro
   tela: logico
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
   escreval("                     -3 Porquinhos  APRESENTA-               ")
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
   escreval("")
   escreval("")
   mudacor("vermelho", "frente")
   escreval("-----------------------------------------------------------------")
   escreval("                             CUIDADO                             ")
   escreval("")
   escreval("         Esse jogo possui luzes piscantes e jumpscares.          ")
   escreval("            Isso pode afetar jogadores com epilepsia.            ")
   escreval("")
   escreval("                       - VOCE FOI AVISADO -                      ")
   escreval("-----------------------------------------------------------------")
   escreval("")
   escreval("")


   enquanto (cont > 0) faca
      timer 1000
      cont <- cont - 1
      timer 0
   fimenquanto
   mudacor("branco", "frente")

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
   mudacor("branco","frente")

   escreval("                      @#!                 123!@#                 ")
   escreval(" @!#!@#                                                          ")
   escreval("                                                                 ")
   escreval("                 EEEE  RRRR   RRRR   OOO  RRRR                   ")
   escreval("                 E     R   R  R   R O   O R   R                  ")
   escreval("                 EEE   RRRR   RRRR  O   O RRRR                   ")
   escreval("                 E     R  R   R  R  O   O R  R                   ")
   escreval("123              EEEE  R   R  R   R  OOO  R   R            1@#!@#")
   escreval("                                                                 ")
   escreval("!@)!#@                                                           ")
   escreval("                      @!#!@#!@#                                  ")








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
   mudacor("vermelho","frente")

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
      escreval("                     -> [1] Iniciar ")
      escreval("                     -> [2] Comtroles")
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
   nada: inteiro

inicio

    enquanto sta = falso faca
    
   leia(a)

   escolha a
   
   caso 1

      sta <-  verdadeiro
      


  caso 2

 limpatela
 
 escreval(" * Regras : ")
 escreval(" ______________________________________________________")
 escreval("")
 escreval(" * O objetivo do jogo é sobreviver das 12 am até as 6 am")
 escreval(" contra um monstro que tenta de localizar dentro da casa.")
 escreval(" Para isso você possui um sistema de cameras para monitorar")
 escreval(" o inimigo e uma porta para barra-lo caso te localize.")
 escreval(" Entretanto, essas funções são limitadas pela bateria do")
 escreval(" local que deve ser racionada. Será que você é capaz de")
 escreval(" sobreviver a toda essa paranoia até as 6 am?")
 escreval("")
 escreval(" OBJETIVO: Sobreviva até as 6 am sem que sua bateria")
 escreval(" acabe e que o monstro não entre em sua sala")
 escreval("______________________________________________________")
 escreval(" * Controles :                                        ")
 escreval("______________________________________________________")
 escreval(" - Câmeras :   ")
 escreval(" Você tem 6 câmeras para poder observar o inimigo,")
 escreval(" ao localiza-lo, você o retardara um pouco.")
 escreval(" * Aperte 1,2,3,4,5 e 6 para olhar as câmeras")
  escreval("")
 escreval(" - Porta :  ")
 escreval(" Você pode controlar a porta para fecha-la e impedir")
  escreval(" o inimigo de entrar em sua sala. ")
  escreval(" Aperte 7 para ir até a porta. Após chegar a porta,")
  escreval(" aperte 1 para fecha-la. Aperte qualquer outra coisa")
  escreval(" para não fezer nada e salvar energia.")
  escreval("")
  escreval(" Bateria:")
  escreval(" Sua bateria é limitada, você deve a racionar.")
  escreval(" Caso aperte qualquer botão sem ser o das câmeras")
  escreval(" ou da porta, você não fara nada, porém isso irá")
  escreval(" economizar sua bateria.")
  escreval(" -Erro da bateria, cam 6 : ")
  escreval(" O monstro pode derrubar sua bateria.")
  escreval(" Fique de olho na cam 6 para impedi-lo")
   escreval("")
   escreval(" 6 AM :")
   escreval(" Você deve sobreviver até as 6 am. caso")
   escreval(" Sua bateria acabe ou o inimigo te encontre,")
   escreval(" Você perdera o jogo!")
    escreval("")
     escreval("[ Aperte qualquer botao para continuar]")
     
     leia(nada)
   
       
   Tela_principal

   fimescolha

  fimenquanto
   
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
         limpatela
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

//
//      FIM DO JOGO ---------------------------------------------------
//


  procedimento fim_jogo
  
  inicio

         limpatela

         mudacor("branco","frente")

         timer 1500
         timer 0

         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval("                             6:00                   ")
         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval("")
         escreval("")

         timer 3000
         timer 0

         escreval(" PARABENS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")

          status_global <- falso


           interrompa



 fimprocedimento




//------------------------------------------------------------
//                 procedimento JUMPSCARE
//-------------------------------------------------------------
procedimento jumpscare
var

   scare : inteiro

inicio

   para scare de 1 ate 6 faca

   limpatela
   
      escreval("")
      escreval("                                                           ")
      escreval("        _________                       _________          ")
      escreval("       /         \                     /         \         ")
      escreval("       |         |                     |         |         ")
      escreval("       |    0    |                     |    0    |         ")
      escreval("       |         |                     |         |         ")
      escreval("       |         |                     |         |         ")
      escreval("       \_________/                     \_________/         ")
      escreval("    \______________                   _____________/       ")
      escreval("     \    |   |    \_________________/    |   |   /        ")
      escreval("      |   |   |     |       |       |     |   |  |         ")
      escreval("      |   |   |     |       |       |     |   |  |         ")
      escreval("       \  |   |     |       |       |     |   |  /         ")
      escreval("        \ |   |     |       |       |     |   | /          ")
      escreval("         ||   |     |       |       |     |   ||           ")
      escreval("          \___|_____|_      |     __|_____|___/            ")
      escreval("                      \_____|____/                                     ")


      timer 100
      timer 0
      
      limpatela

     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")
     escreval("#########################################################")

      limpatela



   fimpara
   
   limpatela
   
   escreval("")
   escreval("GAME OVER")
   
 status_global <- falso


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
   temp <- 35
   tempo_s <- 0
   bateria_b <- 0
   

   
   


   enquanto (bat > 0) e (jogo = verdadeiro) faca
   




      andar <- randi (4) + 1 // andar entra as CAMS 1 A 4  // // CORRIGIR

      andarM <- andarM + randi(7) // andar entre 5 ate jumpscare

      bateria_b <- bateria_b + randi(3)

      se bateria_b >= 15 entao
         c <- verdadeiro
      fimse


      // escolhe entre 0,1,2,3,4,5,6


      //-------------------------------------------------------------------
      //            TELA NA GAMEPLAY
      //-------------------------------------------------------------------
      
         se temp >= 36 entao
         
         fim_jogo
         
         fimse
      


      enquanto c = verdadeiro faca

            andarM <- andarM + randi(3)
            
            bateria_b <- 0
         limpatela
         


         escreval(" \ ________________________________________________________/  ")
         escreval("  |    __________________________                          |  ")
         escreval("  |   |* ERRO:Bateria danificada |           _____________ |  ")
         escreval("  |   |                          | *Controle |           | |  ")
         escreval("  |   | Dar rebut nas cameras?   |   porta:  |           | |  ")
         escreval("  |   |                          |        _  |           | |  ")
         escreval("  |   | 1- sim                   |    7- |o| |           | |  ")
         escreval("  |   |                          |       |_| |           | |  ")
         escreval("  |===|                          |===========|           |=|  ")
         escreval("  |   |__________________________|           |           | |  ")
         escreval("  |               |  |                       |           | |  ")
         escreval("__|_______________|  |_____________          |           | |  ")
         escreval("                 /    \            \_________|___________|_|  ")
         escreval("                |______|            \                       \ ")
         escreval("_____________________________________\                       \")
         escreval("                                                      ",bat,"%")


         leia(bateria)

         se bateria = 1 entao

            limpatela

            escreval(" \ ________________________________________________________/  ")
            escreval("  |    __________________________                          |  ")
            escreval("  |   |* ERRO:Bateria danificada |           _____________ |  ")
            escreval("  |   |                          | *Controle |           | |  ")
            escreval("  |   |  Isso pode levar alguns  |   porta:  |           | |  ")
            escreval("  |   |  segundos:               |        _  |           | |  ")
            escreval("  |   |                          |    7- |o| |           | |  ")
            escreval("  |   |  ||||               10%  |       |_| |           | |  ")
            escreval("  |===|                          |===========|           |=|  ")
            escreval("  |   |__________________________|           |           | |  ")
            escreval("  |               |  |                       |           | |  ")
            escreval("__|_______________|  |_____________          |           | |  ")
            escreval("                 /    \            \_________|___________|_|  ")
            escreval("                |______|            \                       \ ")
            escreval("_____________________________________\                       \")
            escreval("                                                      ",bat,"%")

            timer 1000
            timer 0

            limpatela

            escreval(" \ ________________________________________________________/  ")
            escreval("  |    __________________________                          |  ")
            escreval("  |   |* ERRO:Bateria danificada |           _____________ |  ")
            escreval("  |   |                          | *Controle |           | |  ")
            escreval("  |   |  Isso pode levar alguns  |   porta:  |           | |  ")
            escreval("  |   |  segundos:               |        _  |           | |  ")
            escreval("  |   |                          |    7- |o| |           | |  ")
            escreval("  |   |  |||||||||||||      60%  |       |_| |           | |  ")
            escreval("  |===|                          |===========|           |=|  ")
            escreval("  |   |__________________________|           |           | |  ")
            escreval("  |               |  |                       |           | |  ")
            escreval("__|_______________|  |_____________          |           | |  ")
            escreval("                 /    \            \_________|___________|_|  ")
            escreval("                |______|            \                       \ ")
            escreval("_____________________________________\                       \")
            escreval("                                                      ",bat,"%")

            timer 1000
            timer 0

            limpatela

            escreval(" \ ________________________________________________________/  ")
            escreval("  |    __________________________                          |  ")
            escreval("  |   |* ERRO:Bateria danificada |           _____________ |  ")
            escreval("  |   |                          | *Controle |           | |  ")
            escreval("  |   |  Isso pode levar alguns  |   porta:  |           | |  ")
            escreval("  |   |  segundos:               |        _  |           | |  ")
            escreval("  |   |                          |    7- |o| |           | |  ")
            escreval("  |   |  ||||||||||||||||||  99% |       |_| |           | |  ")
            escreval("  |===|                          |===========|           |=|  ")
            escreval("  |   |__________________________|           |           | |  ")
            escreval("  |               |  |                       |           | |  ")
            escreval("__|_______________|  |_____________          |           | |  ")
            escreval("                 /    \            \_________|___________|_|  ")
            escreval("                |______|            \                       \ ")
            escreval("_____________________________________\                       \")
            escreval("                                                      ",bat,"%")



            timer 1000
            timer 0

            limpatela
            


            escreval(" \ ________________________________________________________/  ")
            escreval("  |    __________________________                          |  ")
            escreval("  |   |*                         |           _____________ |  ")
            escreval("  |   |              /           | *Controle |           | |  ")
            escreval("  |   |            \/            |   porta:  |           | |  ")
            escreval("  |   |    Bateria Concertada    |        _  |           | |  ")
            escreval("  |   |                          |    7- |o| |           | |  ")
            escreval("  |   |  |||||||||||||||||| 100% |       |_| |           | |  ")
            escreval("  |===|                          |===========|           |=|  ")
            escreval("  |   |__________________________|           |           | |  ")
            escreval("  |               |  |                       |           | |  ")
            escreval("__|_______________|  |_____________          |           | |  ")
            escreval("                 /    \            \_________|___________|_|  ")
            escreval("                |______|            \                       \ ")
            escreval("_____________________________________\                       \")
            escreval("                                                      ",bat,"%")



            c <- falso

            timer 1500
            timer 0
            
            mudacor("branco","frente")
            
            timer 100
            timer 0


         senao// fazer nada
            escreval("Você não fez nada")

            andarM <- andarM + randi(3)

            timer 1000
            timer 0

            limpatela

         fimse


      fimenquanto

      // TELA PRINCIPAL --------------------------------------------------------

      limpatela

      escreval(" \ ________________________________________________________/  ")
      escreval("  |    __________________________                          |  ")
      escreval("  |   | *Cameras:                |           _____________ |  ")
      escreval("  |   |--------------------------| *Controle |           | |  ")
      escreval("  |   | cam 1 ------------ cam 2 |   porta:  |           | |  ")
      escreval("  |   |  |                  |    |        _  |           | |  ")
      escreval("  |   | cam 3 ------------ cam 4 |    7- |o| |           | |  ")
      escreval("  |   |  |                  |    |       |_| |           | |  ")
      escreval("  |===| cam 6    sala ---- cam 5 |===========|           |=|  ")
      escreval("  |   |__________________________|           |           | |  ")
      escreval("  |               |  |                       |           | |  ")
      escreval("__|_______________|  |_____________          |           | |  ")
      escreval("                 /    \            \_________|___________|_|  ")
      escreval("                |______|            \                       \ ")
      escreval("_____________________________________\                       \")
      escreval("                                      ",tempo_s, " AM ",bat,"%")


      leia(botao)

      escolha botao

      caso 1

         limpatela

         se (andar = 1) e (andarM < 21) e (bateria_b < 10) entao
         
         mudacor("vermelho","frente")
         
            escreval(" \ __________________________________________________________/  ")
            escreval("  |    __________________________                            |  ")
            escreval("  |   | *Cameras:cam 1-sala      |             _____________ |  ")
            escreval("  |   |--------------------------|             |           | |  ")
            escreval("  |   |                 _______  |             |           | |  ")
            escreval("  |   |           o  o  |     |  |         _   |           | |  ")
            escreval("  |   |           \__/  |     |  |        |o|  |           | |  ")
            escreval("  |   |   ____          |    o|  |        |_|  |           | |  ")
            escreval("  |===|___|  |__________|     |__|=============|           |=|  ")
            escreval("  |   |__________________________|             |           | |  ")
            escreval("  |               |  |                         |           | |  ")
            escreval("__|_______________|  |_____________            |           | |  ")
            escreval("                 /    \            \___________|___________|_|  ")
            escreval("                |______|            \                         \ ")
            escreval("_____________________________________\                         \")
            escreval("                                        ",tempo_s, " AM ",bat,"%")
            bat <- bat - 2
            andarM <- andarM - 2 // AO ACERTAR A POSIÇÃO DO MONSTRO ELE REDUZ O MOVIMENTO (recompença)




         senao
            se (andar > 1) ou (andar < 1)  entao //NAO TA na camera se for maior que 7(esta na 2)
               escreval(" \ __________________________________________________________/  ")
               escreval("  |    __________________________                            |  ")
               escreval("  |   | *Cameras:cam 1-sala      |             _____________ |  ")
               escreval("  |   |--------------------------|             |           | |  ")
               escreval("  |   | 1-              _______  |             |           | |  ")
               escreval("  |   |                 |     |  |         _   |           | |  ")
               escreval("  |   |                 |     |  |        |o|  |           | |  ")
               escreval("  |   |   ____          |    o|  |        |_|  |           | |  ")
               escreval("  |===|___|  |__________|     |__|=============|           |=|  ")
               escreval("  |   |__________________________|             |           | |  ")
               escreval("  |               |  |                         |           | |  ")
               escreval("__|_______________|  |_____________            |           | |  ")
               escreval("                 /    \            \___________|___________|_|  ")
               escreval("                |______|            \                         \ ")
               escreval("_____________________________________\                         \")
               escreval("                                        ",tempo_s, " AM ",bat,"%")

               bat <- bat - 3
          senao
          
              se (andar = 1) e (andarM > 21) ou (bateria_b >= 10) entao
               escreval(" \ __________________________________________________________/  ")
               escreval("  |    __________________________                            |  ")
               escreval("  |   | *Cameras:cam 1-sala      |             _____________ |  ")
               escreval("  |   |--------------------------|             |           | |  ")
               escreval("  |   | 1-              _______  |             |           | |  ")
               escreval("  |   |                 |     |  |         _   |           | |  ")
               escreval("  |   |                 |     |  |        |o|  |           | |  ")
               escreval("  |   |   ____          |    o|  |        |_|  |           | |  ")
               escreval("  |===|___|  |__________|     |__|=============|           |=|  ")
               escreval("  |   |__________________________|             |           | |  ")
               escreval("  |               |  |                         |           | |  ")
               escreval("__|_______________|  |_____________            |           | |  ")
               escreval("                 /    \            \___________|___________|_|  ")
               escreval("                |______|            \                         \ ")
               escreval("_____________________________________\                         \")
               escreval("                                        ",tempo_s, " AM ",bat,"%")
          
           bat <- bat - 2
           
            fimse
         fimse
         fimse

      caso 2

         limpatela

         se (andar > 2) ou (andar < 2) entao // NAO ESTA NA 2 (ESTA NA 1)


            escreval(" \ _______________________________________________________/  ")
            escreval("  |    __________________________                         |  ")
            escreval("  |   | *Cameras:cam 2-Cozinha   |          _____________ |  ")
            escreval("  |   |--------------------------|          |           | |  ")
            escreval("  |   |                 _________|          |           | |  ")
            escreval("  |   |                |    |    |      _   |           | |  ")
            escreval("  |   |                |____|____|     |o|  |           | | |")
            escreval("  |   |______-___          _____ |     |_|  |           | |  ")
            escreval("  |===|___|_____|__________|   |_|==========|           |=|  ")
            escreval("  |   |__/___/_____|____\_____\__|          |           | |  ")
            escreval("  |               |  |                      |           | |  ")
            escreval("__|_______________|  |_____________         |           | |  ")
            escreval("                 /    \            \________|___________|_|  ")
            escreval("                |______|            \                      \ ")
            escreval("_____________________________________\                      \")
            escreval("                                     ",tempo_s, " AM ",bat,"%")

            bat <- bat - 2
            
            senao      // nao aparece e bateria ou andarM maiores
            
            se  (andar = 2 ) e (andarM > 21) ou (bateria_b >= 10) entao
            
             escreval(" \ _______________________________________________________/  ")
            escreval("  |    __________________________                         |  ")
            escreval("  |   | *Cameras:cam 2-Cozinha   |          _____________ |  ")
            escreval("  |   |--------------------------|          |           | |  ")
            escreval("  |   |                 _________|          |           | |  ")
            escreval("  |   |                |    |    |      _   |           | |  ")
            escreval("  |   |                |____|____|     |o|  |           | | |")
            escreval("  |   |______-___          _____ |     |_|  |           | |  ")
            escreval("  |===|___|_____|__________|   |_|==========|           |=|  ")
            escreval("  |   |__/___/_____|____\_____\__|          |           | |  ")
            escreval("  |               |  |                      |           | |  ")
            escreval("__|_______________|  |_____________         |           | |  ")
            escreval("                 /    \            \________|___________|_|  ")
            escreval("                |______|            \                      \ ")
            escreval("_____________________________________\                      \")
            escreval("                                     ",tempo_s, " AM ",bat,"%")
            bat <- bat - 2

         senao

            se (andar = 2 ) e (andarM < 21)  entao // Esta na 2 (não esta na 1)

             mudacor("vermelho","frente")
             
                escreval(" \ _______________________________________________________/  ")
            escreval("  |    __________________________                         |  ")
            escreval("  |   | *Cameras:cam 2-Cozinha   |          _____________ |  ")
            escreval("  |   |--------------------------|          |           | |  ")
            escreval("  |   |                 _________|          |           | |  ")
            escreval("  |   |    O   O       |    |    |      _   |           | |  ")
            escreval("  |   |    \___/       |____|____|     |o|  |           | | |")
            escreval("  |   |______-___          _____ |     |_|  |           | |  ")
            escreval("  |===|___|_____|__________|   |_|==========|           |=|  ")
            escreval("  |   |__/___/_____|____\_____\__|          |           | |  ")
            escreval("  |               |  |                      |           | |  ")
            escreval("__|_______________|  |_____________         |           | |  ")
            escreval("                 /    \            \________|___________|_|  ")
            escreval("                |______|            \                      \ ")
            escreval("_____________________________________\                      \")
            escreval("                                     ",tempo_s, " AM ",bat,"%")

               bat <- bat - 2
               andarM <- andarM - 2
            fimse
         fimse
         fimse


      caso 3

         limpatela

         se (andar > 3) ou (andar < 3) entao

            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:cam 3-garagem   |     _____________ |  ")
            escreval("  |   |---------------|----------|     |           | |  ")
            escreval("  |   |   |           |   _____  |     |           | |  ")
            escreval("  |   |   |___________|__/     /||   _ |           | |  ")
            escreval("  |   |  /_________     /_____/ 0|  |o||           | |  ")
            escreval("  |   | /|_________|   |_____| / |  |_||           | |  ")
            escreval("  |===|/ |_________|  /_____/ 0  |=====|           |=|  ")
            escreval("  |   |__|_________|__|_____|/___|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                ",tempo_s, " AM ",bat,"%")
            bat <- bat - 2

         senao
            se (andar = 3) e (andarM < 21)  entao


             mudacor("vermelho","frente")
             
               escreval(" \ __________________________________________________/  ")
               escreval("  |    __________________________                    |  ")
               escreval("  |   | *Cameras:cam 3-garagem   |     _____________ |  ")
               escreval("  |   |---------------|----------|     |           | |  ")
               escreval("  |   |   |     o  o  |   _____  |     |           | |  ")
               escreval("  |   |   |___________|__/     /||   _ |           | |  ")
               escreval("  |   |  /_________     /_____/ 0|  |o||           | |  ")
               escreval("  |   | /|_________|   |_____| / |  |_||           | |  ")
               escreval("  |===|/ |_________|  /_____/ 0  |=====|           |=|  ")
               escreval("  |   |__|_________|__|_____|/___|     |           | |  ")
               escreval("  |               |  |                 |           | |  ")
               escreval("__|_______________|  |_____________    |           | |  ")
               escreval("                 /    \            \___|___________|_|  ")
               escreval("                |______|            \                 \ ")
               escreval("_____________________________________\                 \")
               escreval("                                ",tempo_s, " AM ",bat,"%")


               bat <- bat - 2
               andarM <- andarM - 2
               
               senao
               
               se  (andar = 3 ) e (andarM > 21) ou (bateria_b >= 10) entao
                escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:cam 3-garagem   |     _____________ |  ")
            escreval("  |   |---------------|----------|     |           | |  ")
            escreval("  |   |   |           |   _____  |     |           | |  ")
            escreval("  |   |   |___________|__/     /||   _ |           | |  ")
            escreval("  |   |  /_________     /_____/ 0|  |o||           | |  ")
            escreval("  |   | /|_________|   |_____| / |  |_||           | |  ")
            escreval("  |===|/ |_________|  /_____/ 0  |=====|           |=|  ")
            escreval("  |   |__|_________|__|_____|/___|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                               ",tempo_s, " AM  ",bat,"%")
            bat <- bat - 2
               
               
            fimse
         fimse
         fimse

        caso 4

         limpatela

         se (andar > 4) ou (andar < 4)  entao

            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:cam 4-Quarto    |     _____________ |  ")
            escreval("  |   |-------------------|-----||     |           | |  ")
            escreval("  |   |   |____|          |    o||     |           | |  ")
            escreval("  |   |  /____/|__________|     ||   _ |           | |  ")
            escreval("  |   | /    /                   |  |o||           | |  ")
            escreval("  |   |/    /                    |  |_||           | |  ")
            escreval("  |===|____/                     |=====|           |=|  ")
            escreval("  |   |____|_____________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                ",tempo_s, " AM ",bat,"%")

            bat <- bat - 2
            
            senao
            
             se  (andar = 4 ) e (andarM > 21) ou (bateria_b >= 10) entao
            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:cam 4-Quarto    |     _____________ |  ")
            escreval("  |   |-------------------|-----||     |           | |  ")
            escreval("  |   |   |____|          |    o||     |           | |  ")
            escreval("  |   |  /____/|__________|     ||   _ |           | |  ")
            escreval("  |   | /    /                   |  |o||           | |  ")
            escreval("  |   |/    /                    |  |_||           | |  ")
            escreval("  |===|____/                     |=====|           |=|  ")
            escreval("  |   |____|_____________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                ",tempo_s, " AM ",bat,"%")

             

            bat <- bat - 2
             
            


         senao

            se (andar = 4) e (andarM < 21)   entao

             mudacor("vermelho","frente")
             
            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:cam 4-Quarto    |     _____________ |  ")
            escreval("  |   |-------------------|-----||     |           | |  ")
            escreval("  |   |   |____|          |    o||     |           | |  ")
            escreval("  |   |  /____/|__________|     ||   _ |           | |  ")
            escreval("  |   | /    /o                  |  |o||           | |  ")
            escreval("  |   |/    /o                   |  |_||           | |  ")
            escreval("  |===|____/                     |=====|           |=|  ")
            escreval("  |   |____|_____________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                ",tempo_s, " AM ",bat,"%")


               bat <- bat - 2
               andarM <-  andarM - 2
            fimse
            fimse
         fimse


      caso 5

         limpatela

         se (andarM < 21) entao

            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:                |     _____________ |  ")
            escreval("  |   |------\---------\-----\---|     |           | |  ")
            escreval("  |   |\      \         \    0\  |     |           | |  ")
            escreval("  |   | \      \_________\_____\_|   _ |           | |  ")
            escreval("  |   |  \                       |  |o||           | |  ")
            escreval("  |   |  /                       |  |_||           | |  ")
            escreval("  |===| /                        |=====|           |=|  ")
            escreval("  |   |/_________________________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                ",tempo_s, " AM ",bat,"%")
            bat <- bat - 2

         senao

            se (andarM >= 21)  entao

             mudacor("vermelho","frente")
             
               escreval(" \ __________________________________________________/  ")
               escreval("  |    __________________________                    |  ")
               escreval("  |   | *Cameras:                |     _____________ |  ")
               escreval("  |   |------\---------\-----\---|     |           | |  ")
               escreval("  |   |\    o \         \    0\  |     |           | |  ")
               escreval("  |   | \o     \_________\_____\_|   _ |           | |  ")
               escreval("  |   |  \                       |  |o||           | |  ")
               escreval("  |   |  /                       |  |_||           | |  ")
               escreval("  |===| /                        |=====|           |=|  ")
               escreval("  |   |/_________________________|     |           | |  ")
               escreval("  |               |  |                 |           | |  ")
               escreval("__|_______________|  |_____________    |           | |  ")
               escreval("                 /    \            \___|___________|_|  ")
               escreval("                |______|            \                 \ ")
               escreval("_____________________________________\                 \")
               escreval("                                ",tempo_s, " AM ",bat,"%")

               bat <- bat - 2
               andarM <- andarM - 2
            fimse
         fimse

      caso 6

         limpatela

         se (bateria_b < 10)  entao

           escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:                |     _____________ |  ")
            escreval("  |   |---_________--------------|     |           | |  ")
            escreval("  |   |   |       |   |          |     |           | |  ")
            escreval("  |   |   |   /   |   |          |   _ |           | |  ")
            escreval("  |   |   |   \   |   |          |  |o||           | |  ")
            escreval("  |   |   |   /   |   |          |  |_||           | |  ")
            escreval("  |===|   |_______|   |          |=====|           |=|  ")
            escreval("  |   |_______________|__________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                ",tempo_s, " AM ",bat,"%")
            bat <- bat - 2

         senao

            se (bateria_b >= 10) entao

             mudacor("vermelho","frente")
               escreval(" \ __________________________________________________/  ")
               escreval("  |    __________________________                    |  ")
               escreval("  |   | *Cameras:                |     _____________ |  ")
               escreval("  |   |---_________--------------|     |           | |  ")
               escreval("  |   |   |       |   |          |     |           | |  ")
               escreval("  |   |   |   /   |   |  o     o |   _ |           | |  ")
               escreval("  |   |   |   \   |   |          |  |o||           | |  ")
               escreval("  |   |   |   /   |   |  \|||||/ |  |_||           | |  ")
               escreval("  |===|   |_______|   |   \|||/  |=====|           |=|  ")
               escreval("  |   |_______________|__________|     |           | |  ")
               escreval("  |               |  |                 |           | |  ")
               escreval("__|_______________|  |_____________    |           | |  ")
               escreval("                 /    \            \___|___________|_|  ")
               escreval("                |______|            \                 \ ")
               escreval("_____________________________________\                 \")
               escreval("                                ",tempo_s, " AM ",bat,"%")

               bat <- bat - 2
               
               andarM <- andarM - 2
               
               bateria_b <- bateria_b - 10
               
               senao

               se (bateria >= 10) e (andarM > 21) entao
               
            escreval(" \ __________________________________________________/  ")
            escreval("  |    __________________________                    |  ")
            escreval("  |   | *Cameras:                |     _____________ |  ")
            escreval("  |   |---_________--------------|     |           | |  ")
            escreval("  |   |   |       |   |          |     |           | |  ")
            escreval("  |   |   |   /   |   |          |   _ |           | |  ")
            escreval("  |   |   |   \   |   |          |  |o||           | |  ")
            escreval("  |   |   |   /   |   |          |  |_||           | |  ")
            escreval("  |===|   |_______|   |          |=====|           |=|  ")
            escreval("  |   |_______________|__________|     |           | |  ")
            escreval("  |               |  |                 |           | |  ")
            escreval("__|_______________|  |_____________    |           | |  ")
            escreval("                 /    \            \___|___________|_|  ")
            escreval("                |______|            \                 \ ")
            escreval("_____________________________________\                 \")
            escreval("                                                ",bat,"%")
            bat <- bat - 2

            bateria_b <- bareria_b - 10

            fimse
         fimse
        fimse

      caso 7

         limpatela

         escreval("                                  ____________________     |    ")
         escreval("                                  |                  |     |    ")
         escreval("_____________________             |                  |     |    ")
         escreval("                    /|            |                  |     |    ")
         escreval("___________________/ |            |                  |     |    ")
         escreval("                   | |       ___  |                  |     |    ")
         escreval("                   | |      | o | |                  |     |    ")
         escreval("-------------------| |      |   | |                  |     |    ")
         escreval("                   | |      |___| |                  |     |    ")
         escreval("       2-          | |============|                  |=====|    ")
         escreval("                   | |            |                  |     |    ")
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
         escreval("             ___  |                      |            |         ")
         escreval("            | o | |                      |            |         ")
         escreval("            |   | |                      |            |         ")
         escreval("            |___| |                      |            |         ")
         escreval("==================|                      |============|         ")
         escreval("                  |                      |            |         ")
         escreval("                  |                      |            |         ")
         escreval("                  |                      |            |         ")
         escreval("                  |                      |            |         ")
         escreval("                  |                      |            |         ")
         escreval("__________________|                      |____________|         ")
         escreval("                                                       \",bat,"%")

         se (andarM >= 21) e (andarM < 50) entao

            limpatela
            
            mudacor("vermelho","frente")

            escreval("                  ________________________                      ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |        0    0        |            |         ")
            escreval("             ___  |        \____/        |            |         ")
            escreval("            | o | |                      |            |         ")
            escreval("            |   | |                      |            |         ")
            escreval("            |___| |                      |            |         ")
            escreval("==================|                      |============|         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("__________________|                      |____________|         ")
            escreval("                                                       \",bat,"%")

         fimse

         leia (porta)

         se porta = 1 entao

            escreval(" fechando porta")

            timer 1000
            timer 0

            bat <- bat - 5

            se (andarM >= 21) e (andarM < 50) entao

               andarM <- randi(4)

            fimse

            timer 100
            timer 0

            limpatela

            escreval("                  ________________________                      ")
            escreval("                  |======================|            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("             ___  |______________________|            |         ")
            escreval("            | o | |                      |            |         ")
            escreval("            |   | |                      |            |         ")
            escreval("            |___| |                      |            |         ")
            escreval("==================|                      |============|         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("__________________|                      |____________|         ")
            escreval("                                                       \",bat,"%")

            timer 100
            timer 0

            limpatela

            escreval("                  ________________________                      ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("             ___  |                      |            |         ")
            escreval("            | o | |======================|            |         ")
            escreval("            |   | |                      |            |         ")
            escreval("            |___| |                      |            |         ")
            escreval("==================|______________________|============|         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("__________________|                      |____________|         ")
            escreval("                                                       \",bat,"%")

            timer 100
            timer 0

            limpatela

            escreval("                  ________________________                      ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("             ___  |                      |            |         ")
            escreval("            | o | |                      |            |         ")
            escreval("            |   | |                      |            |         ")
            escreval("            |___| |                      |            |         ")
            escreval("==================|                      |============|         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |======================|            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("__________________|______________________|____________|         ")
            escreval("                 |    |       |       |    |           \",bat,"%")

            timer 1000
            timer 0

            limpatela

            escreval("                  ________________________                      ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("             ___  |                      |            |         ")
            escreval("            | o | |                      |            |         ")
            escreval("            |   | |                      |            |         ")
            escreval("            |___| |                      |            |         ")
            escreval("==================|                      |============|         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |======================|            |         ")
            escreval("                  |                      |            |         ")
            escreval("                  |                      |            |         ")
            escreval("__________________|______________________|____________|         ")
            escreval("                                                       \",bat,"%")


            timer 100
            timer 0
            
            mudacor("branco","frente")

            escreval ("porta fechada")

            timer 1500
            timer 0

         fimse

         se porta <> 1 entao
            escreval(" Você não fez nada ")
         fimse

         timer 1000
         timer 0

         limpatela
         
         mudacor("branco","frente")

         escreval("                 |              |\               ")
         escreval("                 |              | \              ")
         escreval("                 |              |  \             ")
         escreval("                 |              |   \            ")
         escreval("                 |\             |    \           ")
         escreval("                 | \            |     \          ")
         escreval("                 |\ \        |\ |      \         ")
         escreval("                 | \ \       | ||       \        ")
         escreval("_________________|  \ \      |0||        \       ")
         escreval("                  \  \ \     | ||         \      ")
         escreval("                   \  \ \    | ||          \     ")
         escreval("                    \  \ \    \||           \    ")
         escreval("                     \  \ \     |            \   ")
         escreval("                      \  \ \    |             \  ")
         escreval("                       \  \ \   |              \ ")
         escreval("                        \  \ \  |        ",bat,"%")

         timer 300
         timer 0

         limpatela

         escreval("                                                 |      ")
         escreval("                                                 |      ")
         escreval("                                                 |      ")
         escreval("    _                                            |      ")
         escreval("   / |                                           |      ")
         escreval("  /_ |                                           |      ")
         escreval("  | ||                                           |\\    ")
         escreval("__| |/_____                                      | \\   ")
         escreval("  |_/|    /______________________________________|  \\  ")
         escreval("    / \  /|                                       \  \\ ")
         escreval("________/ |                                        \  \\")
         escreval("       |  |                                         \  \")
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
         escreval("----------     /            / \        /   |                      ")
         escreval("        /|    /                       /    |                      ")
         escreval("       / /   /                       /                            ")
         escreval("      / /|  /_______________________/                             ")
         escreval("-----/ /    |                       |                             ")
         escreval("-----|/     |                       |                             ")
         escreval("     |      |                       |                     ",bat,"%")

         timer 300
         timer 0

         limpatela

         escreval("    |__________________________________________________________")
         escreval("   /                                                           ")
         escreval("  /              _________________                             ")
         escreval(" /              /________________/|                            ")
         escreval("/              |cameras:        | |                            ")
         escreval("               |----------------| |                            ")
         escreval("               |                | |                            ")
         escreval("_______________|                | |____________                ")
         escreval("               |                | |           /|               ")
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

         escreval("     |==================================|          |======|       ")
         escreval("     |                                  |          |      |       ")
         escreval("     |__________________________________|__________|______|       ")
         escreval("    /   _____________________                             \       ")
         escreval("   /   /_____________________\                             \      ")
         escreval("  /    |cameras:             |                              \     ")
         escreval(" /     |---------------------|                               \    ")
         escreval("/      |                     |                                \   ")
         escreval("       |                     |                                 \  ")
         escreval("       |                     |                                  \ ")
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
         escreval("  |   |                          |   porta:  |           | |  ")
         escreval("  |   |                          |        _  |           | |  ")
         escreval("  |   |                          |       |o| |           | |  ")
         escreval("  |   |                          |       |_| |           | |  ")
         escreval("  |===|                          |===========|           |=|  ")
         escreval("  |   |__________________________|           |           | |  ")
         escreval("  |               |  |                       |           | |  ")
         escreval("__|_______________|  |_____________          |           | |  ")
         escreval("                 /    \            \_________|___________|_|  ")
         escreval("                |______|            \                       \ ")
         escreval("_____________________________________\                       \")
         escreval("                                                      ",bat,"%")

         timer 100
         timer 0
         
         outrocaso
      


         limpatela

         escreval(" \ ________________________________________________________/  ")
         escreval("  |    __________________________                          |  ")
         escreval("  |   | *Cameras:                |           _____________ |  ")
         escreval("  |   |--------------------------| *Controle |           | |  ")
         escreval("  |   |                          |   porta:  |           | |  ")
         escreval("  |   |                          |        _  |           | |  ")
         escreval("  |   |            ?             |       |o| |           | |  ")
         escreval("  |   |                          |       |_| |           | |  ")
         escreval("  |===|                          |===========|           |=|  ")
         escreval("  |   |__________________________|           |           | |  ")
         escreval("  |               |  |                       |           | |  ")
         escreval("__|_______________|  |_____________          |           | |  ")
         escreval("                 /    \            \_________|___________|_|  ")
         escreval("                |______|            \                       \ ")
         escreval("_____________________________________\                       \")
         escreval(" *Você não fez nenhuma ação                           ",bat,"%")


      fimescolha  // BOTÃO


      // COLOCAR TEMPO AQUI

      temp <- temp + 1 // TEMPO ATÉ O FIM DO JOGO

      //--------------------------------------------------------------
      //                      "TEMPO" do jogo
      // -------------------------------------------------------------

      se (temp = 6)  entao // muda o tempo p/ o FIM DA  PARTIDA

         tempo_s <- tempo_s + 1   // mostra o tempo no jogo
         fimse

         se (temp = 12) entao

            tempo_s <- tempo_s + 1
            fimse

            se (temp = 18) entao

               tempo_s <- tempo_s + 1
               fimse

               se (temp = 24) entao

                  tempo_s <- tempo_s + 1
                  fimse

                   se (temp = 30) entao

                  tempo_s <- tempo_s + 1
                  fimse





      timer 1500
      timer 0
      
      mudacor("branco","frente")
      
      timer 10
      timer 0

      //----------------------------------------------------
      //                 jumpscare/ morte
      //----------------------------------------------------

      se (andarM > 27) entao

         limpatela

         mudacor("vermelho","frente")

         escreval(" \ __________________________________________________/  ")
         escreval("  |    __________________________                    |  ")
         escreval("  |   | *Cameras:                |     _____________ |  ")
         escreval("  |   |--------------------------|     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |   |                          |   _ |           | |  ")
         escreval("  |   |                          |  |o||           | |  ")
         escreval("  |   |                          |  |_||   0   0   | |  ")
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

         jogo <- falso
         
         
         interrompa //finaliza o loop da gameplay

      fimse


      // -------------------------------------------------------------------
      //       MORTE POR BATERIA  COM JUMPSCARE
      // -------------------------------------------------------------------

      se (bat <= 0) entao
         limpatela
         
         mudacor("vermelho","frente")

         escreval(" \ __________________________________________________/  ")
         escreval("  |    __________________________                    |  ")
         escreval("  |   | *Cameras:                |     _____________ |  ")
         escreval("  |   |--------------------------|     |           | |  ")
         escreval("  |   |                          |     |           | |  ")
         escreval("  |   |                          |   _ |           | |  ")
         escreval("  |   |   # ENERGIA CRÍTICA: 0%  |  |o||           | |  ")
         escreval("  |   |                          |  |_||           | |  ")
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

         jumpscare

      fimse
      
      se temp >= 36 entao
      
      jogo <- falso
      
      fim_jogo
      
      interrompa
      
      fimse
      

  
   fimenquanto
   

   
   fimprocedimento

inicio
   //---------------------------------------------------------------
   //           PROGRAMA PRINCIPAL
   //---------------------------------------------------------------

   status_global <- verdadeiro
   b <- verdadeiro
   c <- falso

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

