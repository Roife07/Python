# Codigo para automaçao no cadastro de produtos
# importando as bibliotecas

import pyautogui
import time

# pyautogui.write -> escrever um texto
# pyautogui.press -> apertar 1 tecla
# pyautogui.click -> clicar em algum lugar da tela
# pyautogui.hotkey -> combinação de teclas
# time.sleep() -> para o sistema fazer uma pausa qnd necessario  

# vamos abrir o navegador chrome e esperar ele carregar

pyautogui.press("win")
time.sleep(3)
pyautogui.write("chrome")
time.sleep(3)
pyautogui.press("enter")
time.sleep(5)

# entrando no link 

pyautogui.write("https://dlp.hashtagtreinamentos.com/python/intensivao/login")
pyautogui.press("enter")
time.sleep(5)


# para clicar na tela onde necessario
# abaixo o comanado para pegarmos a posicao do mouse e nos dar a posicao
#time.sleep(5)
#print(pyautogui.position())
# pyautogui.scroll(200)

pyautogui.click(x=574, y=407)

# escrever o seu email
# tab para passar ao próximo campo

pyautogui.write("seu email aqui")
pyautogui.press("tab") 
pyautogui.write("sua senha")
pyautogui.press("tab")
pyautogui.press("enter")
time.sleep(7)

# Passo 3: Importar a base de produtos pra cadastrar


from sqlalchemy import create_engine
import pandas as pd

# criando uma engine para localizar o banco de dados 
engine =  create_engine('mysql+pymysql://root:1234@localhost:3306/cadastro')

# comando para selecionar qual seria a tabela no banco de dados
# DF seria um variavel criada para receber os valores da tabela

df = pd.read_sql_query("SELECT * FROM produtos", engine)


# Cadastrar um produto

for linha in df.index:
    # clicar no campo de código

    pyautogui.click(x=569, y=294)
    time.sleep(3)

    # pegar da tabela o valor do campo que a gente quer preencher
    
    codigo = df.loc[linha, "codigo"]
    
    # preencher o campo
    
    pyautogui.write(str(codigo))
    
    # passar para o proximo campo
    
    pyautogui.press("tab")
    
    # preencher o campo
    
    pyautogui.write(str(df.loc[linha, "marca"]))
    pyautogui.press("tab")
    pyautogui.write(str(df.loc[linha, "tipo"]))
    pyautogui.press("tab")
    pyautogui.write(str(df.loc[linha, "categoria"]))
    pyautogui.press("tab")
    pyautogui.write(str(df.loc[linha, "preco_unitario"]))
    pyautogui.press("tab")
    pyautogui.write(str(df.loc[linha, "custo"]))
    pyautogui.press("tab")
    obs = df.loc[linha, "obs"]
    if not pd.isna(obs):
        pyautogui.write(str(df.loc[linha, "obs"]))
    pyautogui.press("tab")
    pyautogui.press("enter")
    
    # cadastra o produto (botao enviar)
    # dar scroll de tudo pra cima
    
    pyautogui.scroll(5000)
    
    # Repetir o processo de cadastro até o fim
