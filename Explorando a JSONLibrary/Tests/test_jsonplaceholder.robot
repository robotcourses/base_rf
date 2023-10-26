*** Settings ***
Resource    ../Resources/services/post_jsonplanceholder.resource
Resource    ../Resources/services/get_jsonplanceholder.resource

*** Test Cases ***
T1 - Post Placeholder

    ${usuarios}  Create List  Miguel  Erika  Vinicius
    ${notas}  Create List  5  4  3

    ${response}  Post JSONPlaceholder    
    ...    nome_produto=Notebook
    ...    preco_produto=1990.99
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}

    

T2 - Post Placeholder com Descrição

    ${usuarios}  Create List  Eloa  Aurora  Renan
    ${notas}  Create List  5  4  3  2
    ${descricao}  Create Dictionary  decricao=Geladeira Samsung 220v

    Post JSONPlaceholder    
    ...    nome_produto=Geladeira
    ...    preco_produto=7990.99
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}
    ...    descricao=${descricao}

T3 - Post Placeholder sem o Nome do Produto

    ${usuarios}  Create List  Julia  Vitoria
    ${notas}  Create List  3  2

    Post JSONPlaceholder    
    ...    preco_produto=25990
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}

T4 - Post Placeholder sem o Preço do Produto

    ${usuarios}  Create List  Paulo  Neia
    ${notas}  Create List  5  4
    ${descricao}  Create Dictionary  decricao=Geladeira Samsung 220v

    Post JSONPlaceholder    
    ...    nome_produto=Microondas
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}
    ...    descricao=${descricao}


