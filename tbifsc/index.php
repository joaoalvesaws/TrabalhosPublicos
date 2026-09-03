<!DOCTYPE html>
<html>
    <head>
        <title>Formulario</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <h1 style='text-align: center'>Formulário de aula PHP - Prof. Dra. Lara Popov Zambiasi</h1>
        <h2 style='text-align: center'>Técnico em Desenvolvimento de Sistemas - IFSC Chapecó - 03/09/2026</h2>
		<div class="container mt-3">
        <form action="retorno.php" method="post" >
			 <label for="nome">Nome</label>
            <input type="text" name="nome" class="form-control" placeholder="Digite o nome" required>

            <label for="sobrenome">Sobrenome</label>
            <input type="text" name="sobrenome" class="form-control" placeholder="Digite o sobrenome" required>

            <label for="email">Email</label>
            <input type="email" name="email" class="form-control" placeholder="Digite o email" required>



            <label for="senha">Senha</label>
            <input type="password" name="senha" id="pwd" placeholder="Digite a senha" class="form-control" required>



            
           
           
            <label for="sexo">Sexo</label>
            <select name="sexo">
              <option>Selecione</option>
              <option value="masculino">Masculino</option>
              <option value="feminino">Feminino</option>
              <option value="pni">Prefiro não informar</option>
            </select><br/>

            <label for="cpfInput" class="form-label">CPF  (escreva somente os números)</label>
        <input type="text" class="form-control" id="cpfInput" placeholder="000.000.000-00" maxlength="14" pattern="(\d{3}\.?\d{3}\.?\d{3}-?\d{2})" required>
            <div class="valid-feedback">CPF válido!</div>
            <div class="invalid-feedback">Por favor, digite um CPF válido.</div>


            <label for="pais">País de Origem</label>
            <select name="pais">
              <option>Selecione</option>
              <option value="masculino">Brasil</option>
              <option value="feminino">Outro</option>
              <option value="pni">Prefiro não informar</option>
            </select><br/>

        <label for="cep" class="form-label">CEP (escreva somente os números)</label>
            <input type="text" class="form-control" id="cep" name="cep" placeholder="00000-000" maxlength="8"  pattern="(\d{5}\.?\d{3})" required>


            <label for="telefone" class="form-label">Telefone (escreva somente os números)</label>
            <input type="text" class="form-control" id="telefone" name="cep" placeholder="(99)9999-9999" maxlength="10"  pattern="(/^\(\d{2}\)\s\d{4,5}-\d{4})" required>




			<label for="sexo">Sexo</label>
            <input type="radio" name="sexo" value="feminino">Feminino
            <input type="radio" name="sexo" value="masculino">Masculino

			<div class="form-check mb-3">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" name="lembre"> Lembrar
                </label>
                </div>


            <input type="submit">
        </form>
	</div>
    </body> 
</html>