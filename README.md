# Valuu Test

Um projeto feito como teste para a startup Valuu.

- Consegui implementar a listagem dos itens do Feed, a paginação não tive tempo de fazer. Mas eu tentaria passar um scrollcontroller para listview e adicionar um scroll listener, sempre que chegasse ao máximo de scroll, eu chamaria um método do meu home controller que adicionaria itens a lista, assim aumentando com os novos itens.

- O icone de share sempre está aparecendo por que nessa listagem o campo isTheUser sempre vem como true. Da mesma forma, o userLiked sempre vem como false, então a cor não muda. Mas a lógica está implementada no componente CardFeedWidget.

- Não consegui resgatar os dados do usuário salvos com o shared preferences, por isso, passei o token direto da API para fazer a lista funcionar. A minha dificuldade aqui foi não ter um módulo login e abstrair o login sem interação do usuário, mas escrevi todos os services e o repository com a lógica para implementar esse requisito.
