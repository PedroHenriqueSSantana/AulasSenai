programa
{
	inclua biblioteca Arquivos --> a	
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t

	
	
     
	cadeia  nome[6], enter
     inteiro   quantidade = 0,posicao = 0, opcao, casaP = 0, idade[6], busca = 0, localizar = 0

     cadeia pesquisa
	
	funcao inicio()
	{	

		
		
		limpa()
		escreva(" _________________________________\n")
		escreva("|         MENU PRINCIPAL          |\n")
		escreva("|_________________________________|\n")
		escreva("|    1 - Cadastro de usuario      |\n")
		escreva("|_________________________________|\n")
		escreva("|    2 - Lista de usuarios        |\n")
		escreva("|_________________________________|\n")
		escreva("|    3 - pesquisar usuario        |\n")
		escreva("|_________________________________|\n")
		escreva("|    4 - Sair do sistema          |\n")
		escreva("|_________________________________|\n")
		escreva("|-Escolha uma opção:")
		leia(opcao) 
	
		limpa()
		
		escolha(opcao){

			//caso para cadastar nova peça 
			
		     caso 1:

			  se(quantidade == 0){
			    escreva(" ___________________________________\n")
			    escreva("|quantos usuarios serão cadastrados?|\n")
			    escreva("|___________________________________|\n\n")
			    escreva("R:")
			    leia(quantidade)
			   
		}
			   se(posicao < quantidade){
			   	limpa()
			   
			 	escreva("cadatro ", posicao+1, "/", quantidade, "\n")
			 	escreva("Informe o nome do usuario:\n R:") 
			 	leia(nome[posicao])
			 	
			 	nome[posicao] = Texto.caixa_alta(nome[posicao])
			 	limpa()

			 	escreva("informe sua idade ", nome[posicao], ".\n R:")
			 	leia(idade[posicao])
			 	posicao = posicao+1
		 	
			   }
			 	senao{
			 		limpa()
					escreva("Não existe mais vaga!\n\n")
					escreva("precione a tecla [ENTER] para retornar!")
				
				leia(enter)
			   }
			   
			 	inicio()
			 	pare 

		//caso para ver usuarios listados
			caso 2: 
				limpa()
	   		
	   				
	   		
					se(quantidade == 0 ){
						escreva("nenhum registro encontrado no sistema\n\n")
						escreva("precione a tecla [ENTER] para retornar!")
						leia(enter)//reiniciar o sistema
			 		inicio()
				}

				
				para(casaP = 0; casaP < posicao; casaP++){
				
					escreva("(", casaP+1,")", ": ", nome[casaP],", ",  idade[casaP]," anos.", "\n\n")
				}
					escreva("precione a tecla [ENTER] para retornar!")
				
				leia(enter)
				inicio()
				pare

		//caso para finalizar o programa

		
			caso 3:
				limpa()
				escreva("informe o nome do usuario a ser buscada:\n")
				leia(pesquisa)

				pesquisa = Texto.caixa_alta(pesquisa)
				localizar = 0

				para(busca = 0; busca < posicao; busca++){

					se(nome[busca] == pesquisa) {
						limpa()
						escreva("Usuario ", nome[busca]," de ", idade[busca], " anos foi encontrado com sucesso na posiçaõ ", busca+1)
						localizar = 1 
						escreva("\n\nprecione a tecla [ENTER] para retornar!")
				 		leia(enter)//reiniciar o sistema
					inicio()
				
				}
			}

					se (localizar == 0) {
						limpa()
						escreva("Usuario não encontrado/cadastrado")
						escreva("\n\nprecione a tecla [ENTER] para retornar!")
						leia(enter)//reiniciar o sistema
					limpa()
				inicio()
				
			}
			
				pare

			
			caso 4:
				limpa()
					escreva("Encerrando em 03 segundos . . .")
						u.aguarde(1000)

				limpa()
					escreva("Encerrando em 02 segundos . . .")
						u.aguarde(1000)

				limpa()
					escreva("Encerrando em 01 segundo  . . .")
						u.aguarde(1000)

				limpa()
				pare
				
			caso contrario:
				limpa()
					escreva("opção invalida.")
						u.aguarde(3000)
				inicio()
				pare
		}
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */