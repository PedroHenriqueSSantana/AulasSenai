programa
{
 	inclua biblioteca Util --> u
 	
	const inteiro quant = 5
		 cadeia livro[quant], enter
		 inteiro opcao, posicao = 0, n = 0, quantidade = 0
	
	funcao inicio()
	{
		limpa()
		escreva(" _________________________________\n")
		escreva("|         MENU PRINCIPAL          |\n")
		escreva("|_________________________________|\n")
		escreva("|    1 - empilhar novo livro      |\n")
		escreva("|_________________________________|\n")
		escreva("|    2 - listar lista de livros   |\n")
		escreva("|_________________________________|\n")
		escreva("|    3 - Remomver livro da pilha  |\n")
		escreva("|_________________________________|\n")
		escreva("|    4 - Remover todos os livros  |\n")
		escreva("|_________________________________|\n")
		escreva("|    5 - Sair do sistema          |\n")
		escreva("|_________________________________|\n")
		escreva("|-Escolha uma opção:")
		leia(opcao)

		escolha(opcao) {

			caso 1:
			
				limpa()
				empilhar()
			
			pare

			caso 2:
				
			     limpa()
			     listar()
			pare

			caso 3:

				limpa()
				remover()
			pare

			caso 4: 

				limpa()
				limparPilha()
			pare
			
			caso 5:
				limpa()
				sair()
			pare

			caso contrario:
			limpa()
			escreva("OPÇÃO INVALIDA\n\n")
			u.aguarde(3000)
			inicio()
			
		}
	
	 }
	 
	 funcao empilhar()
	 {
	 
	
	 se(posicao >= quant){
	 	escreva("Não existem mais vagas na sua estante\n\n")
	 	escreva("precione a tecla [ENTER] para retornar!")
		leia(enter)
		inicio()
	 	
	 }
		  
	 	escreva("informe o nome do livro:\n")
	 	leia(livro[posicao])
	 	posicao = posicao + 1
	 	inicio()
	  

	 
	 
	  
	 }

	 funcao listar()
	 {

       se(posicao == 0){
       	escreva("A lista esta vazia adicione um livro primeiro!\n\n")
       }
	 	
			para(n = posicao-1; n >= 0; n--)
			{
				escreva(posicao, " - Nome do livro: (", livro[n], ");\n")	
 			}
				escreva("precione a tecla [ENTER] para retornar!")
				leia(enter)
				inicio()
			
	 	
	 	}

	 funcao remover()
	 {
	 	se(posicao == 0){
	 		escreva("Nenhum registro foi encontrado\n\n")
	 	}
	 	
		senao{
	 	escreva(" removido o livro ", livro[posicao-1], " da pilha de leitura.\n\n")
	 	livro[posicao-1] = ""
	 	posicao = posicao -1 
		}
		
	 	escreva("precione a tecla [ENTER] para retornar!")
		leia(enter)
		inicio()
	 
	 
	 }
	
	 funcao limparPilha()
	 {

		se(posicao == 0){
			escreva("Nenhum registro foi encontrado!\n\n")
		}

	 	senao{
	 	escreva("ATENÇÃO: todos os livros foram removidos da pilha de leitura.\n\n")
	 	
	 	para(n = posicao; n >= 0; n--)
	 	{
	 		limpa()
	 		escreva("aguarde...")
	 		livro[n] = ""
	 		u.aguarde(500)
	 	}
	 	
	 	posicao = 0
	 	}
	 	escreva("precione a tecla [ENTER] para retornar!")
		leia(enter)
		inicio()
	 	
	 }
	 	 
	 funcao sair(){
	 	
	 	escreva("finalizando o programa em 3 segundos")
	 	u.aguarde(1000)
	 	limpa()
	 	escreva("finalizando o programa em 2 segundos")
	 	u.aguarde(1000)
	 	limpa()
	 	escreva("finalizando o programa em 1 segundos")
	 	u.aguarde(1000)
	 	limpa()
	 	
	 }
}
	 
	 
	 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2534; 
 * @DOBRAMENTO-CODIGO = [8, 69, 99, 92, 110, 155];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */