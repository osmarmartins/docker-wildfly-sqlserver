Docker com Wildfly 11 configurado para acesso ao banco de dados SqlServer
Nova imagem com base em jboss/wildlfy 
Adição do driver sqljdbc6.jar
Configuração do arquivo module.xml para uso do driver
Modelo de datasource nos arquivos standalone.xml e standalone-full.xml

- Criação da image:
  1. Baixar arquivos para uma pasta de sua preferência
  2. Acessar a pasta e excutar o comando abaixo:
  
  docker build -t wildfly/sqlserver .


- Subir container:
  1. Executar o comando abaixo

docker container run --name webserver --rm -d -p 9990:9990 -p 8080:8080 wildfly/sqlserver

/opt/jboss/wildfly/standalone/configuration
