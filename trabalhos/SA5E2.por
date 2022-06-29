programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t

	const inteiro	 quant = 5
	cadeia 		 nome[quant], enter
	inteiro 		 resultado = 0, posicao = 0, total = 0, opcao 
	caracter		 confirma
	
	funcao inicio()

	{
				limpa()
		escreva(" _________________________________\n")
		escreva("|         MENU PRINCIPAL          |\n")
		escreva("|_________________________________|\n")
		escreva("| 1 - cadastrar nome              |\n")
		escreva("|_________________________________|\n")
		escreva("| 2 - Listar pacientes cadastrados|\n")
		escreva("|_________________________________|\n")
		escreva("| 3 - atender o proximo da fila   |\n")
		escreva("|_________________________________|\n")
		escreva("| 4 - remover os nomes da fila	  |\n")
		escreva("|_________________________________|\n")
		escreva("| 5 - listar cheia/vazia 	  |\n")
		escreva("|_________________________________|\n")
		escreva("| 6 - Sair do sistema       	  |\n")
		escreva("|_________________________________|\n")
		escreva("|-Escolha uma opção:")
		leia(opcao)

		escolha(opcao) {

			caso 1:
			
			cadastrar()
			
			
			pare

			caso 2:
				
			  listar()
			     
			pare

			caso 3:

			atender()
				
				
			pare

			caso 4: 

			limparLista()
				
			pare
			
			caso 5:
				
			vazia()
				
			pare

			caso 6:

			sair()

			caso contrario:
	}
	
}

	funcao cadastrar()
	{	
		//verificar se existe posição para novos cadastros
		se( total >= quant)
		{
			limpa()
			escreva("não existe lugar para novos pacientese!\n")
			escreva("\n\nPrecione a tecla [ENTER] para retornar!")
			leia(enter)
			inicio()
		}
		//se existir posicao no vetor realiza cadastro
		limpa()
		escreva("escreva o nome do paciente a ser cadastrado:\n")
		leia(nome[total])
		total = total + 1 //total ++

		inicio()
	}

	funcao listar()
	{	
		se(total == 0)
		{
			limpa()
			escreva("não existe nenhum paciente na fila de espera")
			escreva("\n\nPrecione a tecla [ENTER] para retornar!")
			leia(enter)
			inicio()
		}
		senao
		{
			limpa()
			
			para(posicao=0; posicao < total; posicao++)
			{
				escreva("nome do paciente: ", nome[posicao], "\n")
			}
			
			escreva("\n\nPrecione a tecla [ENTER] para retornar!")
			leia(enter)
			inicio()
	}
}

	funcao atender()
	{
		

		se(total == 0){
			limpa()
			escreva("Não há ninguem na fila!\n\n")
			escreva("\n\nPrecione a tecla [ENTER] para retornar!")
			leia(enter)
			inicio()
			
		}
		senao{
			
			posicao = 0
			
			limpa()
			escreva("atender o paciente ", nome[posicao], " da fila.")
			para(posicao; posicao < total -1; posicao++){
			//mudando de posicao os pacientes na fila

			nome[posicao] = nome[posicao+1]
			u.aguarde(250)
		}

		nome[total-1] = "" //limpeza da ultima casa do vetor
		total = total -1 //total--

		escreva("\n\nPrecione a tecla [ENTER] para retornar!")
		leia(enter)
		inicio()
		}
		
	

		
	}

	funcao limparLista()
	{	
		limpa()
	
		escreva("tem certeza que gostaria de esvaziar a lista de espera?[S/N]\n\n")
		escreva("R:")
		leia(confirma)

		se(confirma == 'S' ou confirma == 's')
		{	
			limpa()
			para(posicao = 0; posicao < total ; posicao++)
			{
				nome[posicao] = ""
				u.aguarde(250)
			}
			total = 0 //restaura a variavel total para zero
			escreva("Todos os nomes da fila foram limpos com sucesso!")
			
		}
		senao{
			limpa()
			se(confirma == 'N' ou confirma =='n'){
				escreva("Nenhum paciente foi removido da fila de espera!\n")
			}
			senao{
			limpa()
			escreva("Desculpe, nao entendi seu comando!\n")
			}
		
		}

		
			escreva("\n\n precione a tecla [ENTER] para retarnar")
			leia(enter)
			inicio()
		
	}

	funcao vazia()
	{	
		limpa()
		se( total == 0){
			escreva("Lista de pacientes vazia!")
		}
		senao se(total == quant){
			escreva("lista cheia")
		}
		senao{
			limpa()
			escreva("A lista de pacientes não esta vaiza!   (", total, "/", quant, ")")
		}
			escreva("\n\n precione a tecla [ENTER] para retarnar")
			leia(enter)
			inicio()
	}

	funcao sair()
	{
		escreva("finalizando em 3 segundos")
		u.aguarde(1000)
		limpa()
		escreva("finalizando em 2 segundos")
		u.aguarde(1000)
		limpa()
		escreva("finalizando em 1 segundos")
		u.aguarde(1000)
		limpa()
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3845; 
 * @DOBRAMENTO-CODIGO = [75, 95, 120, 158, 215];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome, 7, 11, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */