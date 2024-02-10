# Retorna True se a linha é vazia e False em contrário.
def linha_vazia(linha):
    return len(linha.strip()) == 0

# Retorna True se a linha não é vazia e False em contrário.
def linha_nao_vazia(linha):
    return not linha_vazia(linha)

# Carrega todo o conteúdo de um arquivo texto especificado e o retorna na
# forma de uma lista de strings.
def linhas_de(nome_arquivo):
    linhas = []
    with open(nome_arquivo, mode='r') as arquivo:
        linha = '*'
        while linha != '':
            linha = arquivo.readline()
            if linha != '':
                linhas.append(linha.replace('\n', ''))
    return linhas

# Carrega todo o conteúdo de um arquivo texto especificado e retorna
# um dicionário onde cada chave é uma palavra e seu respectivo valor
# é a frequência daquela palavra.


def bag_of_words(nome_arquivo):
    def sem_invalidos(linha):
        invalidos = ['\n',';','.',',',':', '"', '*', '@', '!', '?',"'s", "'"]
        for invalido in invalidos:
            linha = linha.replace(invalido,'')
        return linha
    with open(nome_arquivo, mode='r') as arquivo:
        bag = dict()
        linha = '*'
        while linha != '':
            linha = arquivo.readline()
            if linha != '':
                for palavra in sem_invalidos(linha).split():
                    palavra_unica = palavra.casefold()
                    if palavra_unica in bag:
                        bag[palavra_unica] = bag[palavra_unica]+1
                    else:
                        bag[palavra_unica] = 1
        return bag

# Retorna uma quantidade especificada das palavras mais frequentes de
# um dicionário que opera como bag of words. As palavras são retornadas
# na forma de outro dicionário.
def most_frequent(bag_of_words, contagem):
    frequencias = []
    for palavra, frequencia in bag_of_words.items():
        frequencias.append((palavra.casefold(), frequencia))
    frequencias.sort(key=lambda item: item[1], reverse=True)
    most_dict = dict()
    for frequencia in frequencias[0:contagem]:
        most_dict[frequencia[0]] = frequencia[1]
    return most_dict

# Grava em um arquivo especificado o conteúdo de um dicionário que
# contém uma bag of words. O arquivo gerado é um CSV que pode ser
# utilizado no site wordclouds.com.
def write_frequencies_csv(nome_arquivo, bag_of_words):
    with open(nome_arquivo, mode='w') as arquivo:
        arquivo.write('Palavras;Frequência\n')
        for palavra, frequencia in bag_of_words.items():
            arquivo.write(f'{palavra};{frequencia}\n')
            
            
