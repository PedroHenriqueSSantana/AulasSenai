programa
{
	inclua biblioteca Util --> u
	
	const inteiro  TAM = 5
	
		funcao inicio()
		{
			inteiro vetor[TAM] = { 14, 22, 38, 54, 52}

			escreva("vetor original: ")	
			imprime_vetor(vetor)
			escreva("\n")

			//inicia a função merger_sort - Inicia na posicao 0 indo ate a posição 8 - 1 = 7
			merger_sort(vetor, 0, TAM - 1)  

			escreva("\nVetor ordenado: ")
			
			imprime_vetor(vetor)
			escreva("\n")
		}

		funcao merger_sort(inteiro vetor[], inteiro ini, inteiro fim)
		{
			inteiro meio, i, j, k, aux[TAM]

			//tamanho do vetor
			se (ini < fim)	
			{
				meio = (ini + fim) / 2  //resultado do valor do meio do vetor ( soma ini + fim dividido por 2 )
				merger_sort(vetor, ini, meio) // chama a fnção merger_sort e repassa de forma recursiva o inicio e meio
				merger_sort(vetor, meio + 1, fim) // chama a função merger_sort e repassa de forma recursiva o meio+1 e o fim 

				i = ini 
				j = meio + 1
				k = ini

				enquanto(i <= meio e j <= fim)
				{
					
					se(vetor[i] < vetor[j])
					{
						aux[k] = vetor[i] //troca de posicao os veotres para auxiliar
						i++ //incrementa a variavel i 
						k++ //incrementa a variavel k
						u.aguarde(1000)
					}
					senao
					{
						 aux[k] = vetor[j]//troca de posicao os veotres para auxiliar - vetor k recebe vetor j (meio-1)
						 j++ //incrementa a variavel j
						 k++ //incrementa a variavel k
						u.aguarde(1000)
					}
				}

				enquanto(i <= meio)
				{
					aux[k] = vetor[i]
					i++
					k++
					u.aguarde(1000)
					
				}
				
				enquanto(j <= fim)
				{
					aux[k] = vetor[j]
					j++
					
				}
				para(i = ini; i<= fim; i++)
				{
					vetor[i] = aux[i]
				}
		}
			
			escreva("\nPosição do vetor : ", ini, " até ", fim, ": ")
			imprime_vetor(vetor)
		}
		
		funcao imprime_vetor(inteiro vetor[])
		{
			inteiro i 

			para(i = 0; i < TAM; i++)
			{
				escreva(vetor[i]," ")
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1511; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */