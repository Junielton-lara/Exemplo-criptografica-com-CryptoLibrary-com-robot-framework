# Exemplo-criptografica-com-CryptoLibrary
Usando no Robot framework

# INTRODUÇÃO
Muito tem sido escrito sobre gerenciamento de dados de teste. Um dos tópicos que podem ser de particular interesse é o da proteção e segurança dos dados de teste.
# INSTALANDO A CRYPTOLIBRARY
pip install robotframework-crypto

# Criar um par de chaves
1° Abra um terminal (por exemplo, o prompt de comando ou shell de energia em um sistema Windows) e digite o comando 'CryptoLibrary'.

2° Depois de inserir o comando 'CryptoLibrary'. (Devera abrir um terminal de seleção)

3° Como queremos criar um par de chaves, ativamos o item de menu 'Abrir configuração' (usando as teclas de seta para baixo e enter). Isso nos levará ao seguinte submenu:

4° Ative o item de menu 'Configurar par de chaves'

5 °Selecione o item de menu 'Gerar par de chaves'. Isso nos apresentará uma pergunta:

### Pronto configuração efetuada


# Agora para criptografar dados 
Para criptografar os dados de teste, utilizaremos a segunda ferramenta CLI que vem com a biblioteca: o CryptoClient.
Certifique-se de ter uma janela de terminal aberta e digite o comando 'CryptoClient':

No terminal selecione "Encrypt"

Informe o valor a ser criptografado

E no console sera fornecida a sua cheve




# Exemplo
*** Settings *** <br>
Library           CryptoLibrary    variable_decryption=True<br>
Library           SeleniumLibrary<br>
Suite Teardown    Close Browser<br>


*** Variables ***<br>
'${senha}    crypt:ZY0RvpKOTA2a2DRRVfuCJ07iZNMOUriPyPeb1bp7X0SPHi84pfYORHp/mGw+FattY76ERVUC+W0=<br>

*** Test Cases ***<br>
First example test case<br>
&nbsp;&nbsp;    Open Browser    &nbsp;&nbsp;https://www.exemplo.com/    &nbsp;&nbsp;gc<br>
&nbsp;&nbsp;    Maximize Browser Window<br>
&nbsp;&nbsp;    Input Text   &nbsp;&nbsp; id:user-name    standard_user<br>
&nbsp;&nbsp;    Input Password    &nbsp;&nbsp;id:password    ${senha}<br>
&nbsp;&nbsp;    Click Element    &nbsp;&nbsp;id:login-button<br>
&nbsp;&nbsp;    Wait Until Page Contains  &nbsp;&nbsp; Products<br>

   
