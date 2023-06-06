let btnEntrar = document.getElementById('btnEntrar')


const modalEntrar = () => {
    let loginElement = document.querySelector('.login-modal')
    


    let content = `
<figure>
    <div class="container">
        <div class="container">
            <button class="bg-orange-600 c-white-900 subtitle" id="removeElement">x</button>
            <p class="text c-orange-600">
                Por favor, faça o login com suas credenciais
                para acessar a sua conta e desfrutar de todos
                os recursos disponíveis. Garantimos a segurança
                dos seus dados durante todo o processo.
                Em caso de dúvidas, entre em contato com nossa
                equipe de suporte. Bem-vindo(a) de volta!
            </p>
            <form action="">
                <fieldset>
                    <label class="text__link c-orange-600" for="email">Email</label>
                    <input type="text" placeholder="Digite o nome cadastrado">
                </fieldset>
                <fieldset>
                    <label class="text__link c-orange-600" for="senha">Senha</label>
                    <input type="password" placeholder="Digite a senha cadastrada">
                </fieldset>
                <p class="text tx-dec-able c-orange-800">Esqueci minha senha!</p>
                <div class="container-row">
                    <input type="checkbox">
                    <label class="c-orange-600" for="">Lembrar dados de acesso</label>
                </div>
                <button class="btn-padrao text__link c-white-900 bg-orange-600">Enviar</button>
            </form>
        </div>
    </div>
</figure>
`
    loginElement.innerHTML = content

    console.log(loginElement)

    let closeButton = document.getElementById('removeElement')

    closeButton.addEventListener('click', () => {
        loginElement.remove()
        if (loginElement)
            window.location.reload()
    })
}


export { btnEntrar, modalEntrar }