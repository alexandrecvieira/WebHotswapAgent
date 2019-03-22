# WebHotswapAgent

Sincroniza as alterações dos arquivos da WebContent do Eclipse para o Servidor Local(Glassfish) sem a necessidade de fazer reload no servidor

#### Uso

1. Coloque os arquivos **web-hostswap-agent.jar** e **web-hotswap.sh** _juntos_ na mesma pasta
1. Certifique-se de que o arquivo web-hotswap.sh tem permissão de execução: _chmod +x web-hotswap-agent.sh_
1. Edite o arquivo web-hotswap.sh completando as informações:
  * web_hotswap_path = path para o arquivo web-hostswap-agent.jar: Ex. _/home/user/development/jee/tools/web-hostswap-agent.jar_
  * server_webroot = path para o diretório onde ficam as aplicações que o Eclipse faz o deploy: Ex. _/home/user/development/server/glassfish3/glassfish/domains/domain1/eclipseApps/_
  * Obs. _glassfish3/glassfish/domains/domain1/eclipseApps/_ é o path padrão do Glassfish para deploy de projetos do Eclipse
1. Coloque o arquivo **web-hotswap-agent.launch** na raiz de cada projeto onde deseja utilizar o web-hotswap-agent
1. Edite o arquivo web-hotswap-agent.launch na linha 6:
  * De:
  
	<stringAttribute key="org.eclipse.ui.externaltools.ATTR_LOCATION" value="MY_PATH_TO_web-hotswap.sh"/>
	
  * Para, por exemplo: 

	<stringAttribute key="org.eclipse.ui.externaltools.ATTR_LOCATION" value="/home/user/development/jee/tools/web-hotswap.sh"/>