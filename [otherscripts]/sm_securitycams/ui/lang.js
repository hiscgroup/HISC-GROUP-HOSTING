lang = {
	/*Commands*/
	["!help"] : "!help",
	["!helpjob"] : "!ajuda_trab",
	["!changeowner"] : "!mudardono",
	["!changegroup"] : "!mudargrupo",
	["!changename"] : "!mudarnome",
	["!changegroupowner"] : "!mudardonogrupo",
	["!movecam"] : "!movercam",
	["!installmod"] : "!instalarmod",
	["!removemod"] : "!removermod",
	["!info"]: "!info",
	["!find"]: "!encontrar",
	["!destroycam"] : "!destruircam",
	["!grades"] : "!nivel",
	["!mods"] : "!modos",
	["!viewcam"] : "!vercam",
	["!money"] : "!dinheiro",
	["!withdrawmoney"] : "!retirardinheiro",
	["!depositmoney"] : "!depositardinheiro",
	["!clients"] : "!clientes",
	["!jobs"] : "!trabalhos",
	["!employees"] : "!empregados",
	["!hireplayer"] : "!contratar_jog",
	["!invoice"] : "!fatura",
	["!promoteplayer"] : "!promover_jog",
	["!kickplayer"] : "!kick_jog",
	["!openinvoices"] : "!abrir_faturas",
	["!exit"] : "!fechar",
	["!fixcam"] : "!fixcam",
	["!listbrokencams"] : "!lista_cams_avariadas",

	/* !help texts */

	["commandnotfound"] : "Comando não encontrado. Escreva !ajuda ou !ajuda_trab para listar os comandos",

	["help"] : `
		<p>!mudardono id (jogador id ou trab) camgrupo camnome</p> 
		<p>!mudargrupo id grupo</p> 
		<p>!mudarnome id nome</p> 
		<p>!mudardonogrupo grupo "jogador id ou trab" "nome do antigo dono"</p>
		<p>!instalarmod id modnome</p>
		<p>!movercam id</p> 
		<p>!fixcam id</p> 
		<p>!destruircam id</p> 
		<p>!vercam id</p>
		<p>!lista_cams_avariadas</p> 
		<p>!info | Lista todas as câmeras conectadas</p> 
		<p>!encontrar id | Obtenha a localização do GPS do acampamento</p> 
		<p>!trabalhos | Lista de empregos disponíveis que podem ser usados ​​como proprietário</p>
		<p>!clientes | Lista de clientes mais próximos</p>
		<p>!modos | Lista de modos disponíveis</p>
		<p>!fechar</p>
	`,
	["helpjobworker"] : `
		<p>!fatura jog_id quantia (escreva sua mensagem de fatura aqui)</p>
		<p>!depositardinheiro quantia</p>
	`,
	["helpjobbos"] : `
		<p>!retirardinheiro quantia</p>
		<p>!dinheiro</p><p>!contratar_jog jog_id</p>
		<p>!kick_jog primeiro nome último nome</p>
		<p>!promover_jog primeiro nome último nome nível</p>
		<p>!nivel</p>
		<p>!empregados</p>
	`,
	["mods"] : `
		<p> radar | Mede a velocidade do veículo e a exibe na tela </p>
		<p> facereq | Identifica o rosto de uma pessoa e informa os detalhes da pessoa</p>
		<p> zoom | Permite que você use o zoom</p>
	`,
	
	
	/* Other */

	["fetchingdata"] : "Buscando dados...",
	["missingarguments"] : "Argumentos ausentes",
	["cameraupdated"] : "Câmera atualizada",
	["invalidid"] : "id inválido",
	["alreadyhavemod"] : "Esta câmera já possui este modo",
	["nomod"] : `!`,
	["removedmod"] : "Remover modo",
	["invalidmod"] : "Invalido modo nome",
	["modinstalled"] : "Modo instalado",
	["amountofcams"] : "Cameras no total",
	["noconnections"] : "Sem conexões",
	["newconnection"] : "Nova conexão",
	["lostconnectionto"] : "Conexão perdida com",
	["destroying"] : "Destruindo câmera",
	["connecting"] : "Conectando à",
 
	["id"] : "id",
	["owner"] : "dono",
	["group"] : "grupo",
	["name"] : "nome",
	["from"] : "de",
	["modds"] : "Modos",
	["status"] : "Status",
	["unbroken"] : "Bom estado",
	["broken"] : "Partida",
	["destroyed"] : "Destruída",
	["gpsSet"] : "Localização de cam marcada no GPS",

}
