<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SistemaLiga._Default" %>

<!DOCTYPE html>
<html lang="pt-PT">
<head runat="server">
    <meta charset="UTF-8">
    <title>Hello World - TG2</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 50px; background-color: #f4f4f9; }
        .card { background: white; border: 1px solid #ccc; padding: 30px; border-radius: 10px; display: inline-block; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        button { padding: 10px 20px; font-size: 16px; cursor: pointer; background-color: #007bff; color: white; border: none; border-radius: 5px; }
        button:hover { background-color: #0056b3; }
        #lblResultado { margin-top: 20px; font-size: 16px; line-height: 1.5; }
    </style>

    <!-- Importa o ficheiro JS externo -->
    <script src="plataforma.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h1>Sistema de Emparelhamento</h1>
            
            <!-- O botão chama a função que está no plataforma.js -->
            <button type="button" onclick="testarArquitetura()">Testar Integração Completa (Hello World)</button>
            
            <p id="lblResultado">A aguardar teste de arquitetura...</p>
        </div>
    </form>
</body>
<script src="Scripts/Plataforma/Plataforma.js"></script>
</html>