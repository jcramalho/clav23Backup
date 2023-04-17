const fs = require('fs')
const FormData = require('form-data')
const fetch = require('node-fetch')
function sendFile(fname){
	const formData = new FormData()
	formData.append('myFile', fs.createReadStream(fname))
	fetch('http://epl.di.uminho.pt:2403/files', {
    		method: 'POST',
    		body: formData
	})
	.then(resposta => {
    		if (resposta.ok) {
        		console.log('Ficheiro ' + fname + ' enviado com sucesso!')
    		} 
    		else {
        		console.log('Erro na recepção do ficheiro...')
    		}
	})
	.catch(error => {
    		console.log('Erro no envio do ficheiro...')
	});
}

var ficheiros = ["autos.json", "chaves.json", "colaboracoes.json", "docApoio.json","noticias.json", "pedidos.json","prodCientifica.json", "users.json"]

for( f of ficheiros ){
	console.log("Enviando " + f)
	sendFile(f)
}

