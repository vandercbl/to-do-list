# Feature: Reordenar tarefas
# 		Essa é realmente simples. Uma das vantagens de uma lista de tarefas baseada em aplicativo é que você não está limitado pela tinta no papel. No entanto, muitos aplicativos não permitem reorganizar facilmente a ordem dos todos na sua lista

# Feature: Sincronização
# 		Novamente, um dos benefícios de uma lista eletrônica deve ser a capacidade de sincronizar em todas as plataformas e locais em que o usuário trabalha. (Veja # 10 abaixo)

# Feature: Lista de hoje
# 		Você não pode fazer tudo. E uma das melhores maneiras de "realizar o trabalho" é concentrar-se apenas nas principais tarefas de hoje. A capacidade de ver um subconjunto ou "Lista de ocorrências" para Hoje é importante.

# Feature: Captura de voz
# 		Uma das maneiras mais rápidas de interagir com nossos dispositivos em movimento é por comandos de voz. No entanto, ainda não é um recurso onipresente, e muitos aplicativos usam soluções alternativas ou sistemas de terceiros. Gostaria de ver mais aplicativos que permitem a captura de voz na tela de bloqueio.

Feature: Tarefas

Contexto:
		Dado que o usuário esteja logado

Scenario: Adicionar tarefa
Quando informar os dados válidos
Então o sistema deve cadastrar a nova tarefa
E exibir a mensagem de "Tarefa adicionada"

Scenario: Excluir tarefa
Quando selecionar a tarefa para ser excluída
Então o sistema deve excluir a tarefa selecionada
E exibir a mensagem de "Tarefa excluída"

Scenario: Editar tarefa
Quando selecionar a tarefa para ser editada
E preencher o dados válidos
Então o sistema deve alterar e gravar as informações
E exibir a mensagem de "Tarefa alterada"


Feature: Categorias

Scenario: Adicionar categoria
Quando informar os dados válidos
Então o sistema deve verificar se já existe uma categoria com esse nome
E cadastrar a nova categoria
E exibir a mensagem de "Categoria adicionada"

Scenario: Excluir categoria
Quando selecionar a categoria para ser excluída
Então o sistema deve verificar se existem tarefas relacionadas com esse categoria
E deve excluir a categoria selecionada e todas as tarefas que pertencem a ela
E exibir a mensagem de "Categoria excluída"

Scenario: Editar categoria
Quando selecionar a categoria para ser editada
E preencher o dados válidos
Então o sistema deve alterar e gravar as informações
E exibir a mensagem de "categoria alterada"
