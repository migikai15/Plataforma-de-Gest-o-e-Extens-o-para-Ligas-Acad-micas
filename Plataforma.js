// plataforma.js

function testarArquitetura() {
    const labelResultado = document.getElementById('lblResultado');

    labelResultado.style.color = "blue";
    labelResultado.innerText = "A processar... A consultar o backend em C# e a base de dados CONTFLOW.";

    fetch('Default.aspx/HelloWorld', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        },
        body: JSON.stringify({}) 
    })
        .then(response => {
            if (!response.ok) {
                throw new Error("Erro no pedido HTTP: " + response.status);
            }
            return response.json();
        })
        .then(data => {
            const resultado = data.d;
            labelResultado.style.color = "green";
            labelResultado.innerHTML = `
            <strong>Status:</strong> ${resultado.Status} <br><br>
            <strong>Backend (C#):</strong> ${resultado.Mensagem} <br><br>
            <strong>Base de Dados (SQL):</strong> ${resultado.BancoDeDados}
        `;
        })
        .catch(error => {
            labelResultado.style.color = "red";
            labelResultado.innerHTML = `<strong>Erro ao conectar:</strong> Verifique se o servidor C# está a correr e se a string ConnDB está correta no Web.config.`;
            console.error('Detalhes do erro:', error);
        });
}