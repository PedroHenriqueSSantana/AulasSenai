programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t

	
	const inteiro linha = 10, coluna = 10

	cadeia passageiro[linha][coluna], enter
	inteiro linMax = 0, colMax = 0, fila, poltrona, opcao, l = 0, c = 0, quant = 0 
	inteiro limite = 0
	real maxPolt = 0 
	cadeia pesquisa
	
	funcao inicio()
	{
		limpa() 
		escreva("bem vindo a Sweet flight!\n\n")

		se(maxPolt == 0)
		{
			escreva("Quantos lugares serão necessarios para o voo?[MAX:", linha * coluna ,"]\n")
			escreva("R:")
			leia(maxPolt)
			limpa()
		se(maxPolt > 300)
		{
			escreva("LIMITE DE POLTRONAS ATINGIDO")
			maxPolt = 0 
			u.aguarde(1500)
			inicio()
		}
			escreva("quantas filas serão necessarias?[MAX:",linha,  "]\n")
			leia(linMax)
			limpa()
		se(linMax > 30)
		{
			escreva("LIMITE DE FILAS ATINGIDO")
			maxPolt = 0
			linMax  = 0
			u.aguarde(1500)
			inicio() 
		}
			escreva("quantas colunas serão necessarias?[MAX:",coluna,  "]\n")
			leia(colMax) 
			limpa()
		se(colMax > 10)
		{
			escreva("LIMITE DE COLUNAS ATINGIDO")
			maxPolt = 0 
			linMax  = 0
			colMax  = 0
			u.aguarde(1500)
			inicio()
		}	
	}
			se(maxPolt > linha*coluna)
			{
			 escreva("Valor acima da capacidade maxima... \n Por favor digite um numero valido.")
			 inicio()
			}
				senao
				{	
					limpa()
					escreva("Como poderiamos te ajudar?\n")
					escreva("1 - reservar poltrona.\n")
					escreva("2 - ver disponiveis \n")
					escreva("3 - ver ocupadas \n")
					escreva("4 - procurar por nome \n")
					escreva("5 - ver total disp/ocup \n")
					escreva("R:")
					leia(opcao)
				}

				escolha(opcao)
				{
					caso 1 :
						reserva()
					pare 

					caso 2 :
						verDisp()
					pare

					caso 3 : 
						verOcup()
					pare 

					caso 4: 
						verNome()
					pare 

					caso 5 :
						numDO()
					pare

					caso 6 :
						sair()
					pare
				}
					
	}

	funcao reserva()
	{
		limpa()
						
		escreva("Em que fila gostaria de se sentar?\nR:")
		leia(fila)
		limpa()
		
		se(fila > linMax)
		{
		  escreva("Valor não suportado para esse Voo")
		  u.aguarde(1500)
	       inicio()
		}
		 senao{
			 se(linMax <= fila)
			 {
			  escreva("Ultima fileira disponivel: ", linMax -1, "\n")
			 }
			  senao{}
					escreva("Em qual poltrona gostaria de se sentar?\nR:")
					leia(poltrona)
					limpa()
				se(poltrona > colMax)
				{
					escreva("Valor não suportado para esse Voo")
					u.aguarde(1500)
					inicio()
				}
				 senao{
					se(colMax <= poltrona)
					{
					 escreva("Ultima poltrona disponivel: ", colMax -1, "\n")
					}
						senao se(maxPolt <= (fila*10) + (poltrona*1))
						{
						 escreva("Ultima poltrona do voo é: ", maxPolt -1, "\n")
						}
						 senao{
							se(passageiro[fila][poltrona] == "")
							{
								escreva("Para quem seria a reserva?\nR:")
								leia(passageiro[fila][poltrona])
								passageiro[fila][poltrona] = t.caixa_alta(passageiro[fila][poltrona])
								escreva("Poltrona reservada com sucesso!")
								u.aguarde(1500)
								quant++
								inicio()
							}
							senao{
								 escreva("Poltrona ja ocupada!")
								 u.aguarde(1000)
								 inicio()
								}
							}
					  }					
				}
							
							
		}
	funcao verDisp()
	{
	   para(l = 0; l < linMax; l++)
	   {
	   	para( c = 0 ; c < colMax; c++)
	   	{
	   		se(passageiro[l][c] == "")
	   		{
	   			escreva("Fila:", l, "/Coluna:",c, "]\n")
	   		}
	   	}
	   }
		escreva("aperte [ENTER] para retornar")
		leia(enter)
		limpa()
		inicio()
	}
	funcao verOcup()
	{
	limpa()

		 	para( l = 0; l < linMax; l++)
	   		{
	   			para( c = 0 ; c < colMax; c++)
	   			{
	   				se(passageiro[l][c] != "")
	   				{
	   				escreva("Fila:", l, "/Coluna:",c, "] - ",passageiro[l][c],"\n")
	   				}
	   				
	   			}
	   		}
		escreva("aperte [ENTER] para retornar")
		leia(enter)
		inicio()
		}
	funcao verNome()
	{
		escreva("Nome do passageiro para busca:\n")
		leia(pesquisa)
		pesquisa = t.caixa_alta(pesquisa)

		para(l = 0; l < linMax ; l++){
			para(c = 0; c < colMax ; c++){
				se(pesquisa == passageiro[l][c]){
					limpa()
					escreva("Passageiro: ", pesquisa, " na poltrona:", l, "/", c)

					u.aguarde(3000)
					inicio()
				}
			}
		}
	}
	funcao numDO()
	{
				
		inteiro valCheios   = (quant * 100) / maxPolt
		inteiro valVazios   = (maxPolt - valCheios)
		

		inteiro mediaCheios = (valCheios/maxPolt)*100
		inteiro mediaVazios = (valVazios/maxPolt)*100
		//OBS( para o christian) não sei oque fiz mas quando executo
		//---------------------- não fica com numero com virgula 
		
		escreva("total de poltronas ocupadas:", valCheios, " - ", mediaCheios, "%\n")

		escreva("total de poltronas vazias:", valVazios, " - ", mediaVazios, "%\n")


		escreva("\n\naperte [ENTER] para retornar")
		leia(enter)
		limpa()
		inicio()
	}
     funcao sair()
     {
     	escreva("Obrigado por voar conosco!")
     	escreva("Agradecemos sua preeferencia")

     	u.aguarde(3000)
     	
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4759; 
 * @DOBRAMENTO-CODIGO = [25, 56, 163, 180, 199, 239];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */