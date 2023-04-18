
let user = {email:""}
function updateUser(email)
{
	user.email = email
}

function Fonction2()
{
	document.getElementsByName("ligne1")[1].style.background="lightgreen"
	document.getElementsByName("ligne1")[1].style.border="10px solid green"
	document.getElementsByName("ligne1")[1].innerHTML="Ligne ind&eacute;pendante."
}

function Fonction3()
{
	document.getElementById("ligne2").style.color="blue";
	document.getElementById("ligne2").innerHTML="Plus de contenu ici!";
	document.getElementById("ligne2").align="right";
}

function SupprimerContenu()
{
	document.getElementById("email").value="";
	document.getElementById("password").value="";
}
async function inscriptionButton(){
    let newClientNom = document.getElementById("Nom").value
    let newClientPrenom = document.getElementById("Prenom").value
    let newClientAge = document.getElementById("Age").value
    let newClientTelephone = document.getElementById("Telephone").value
    let newClientEmail = document.getElementById("Email").value
    let newClientPassword = document.getElementById("Password").value

    console.log(newClientNom, newClientPrenom, newClientAge, newClientEmail, newClientPassword);
    try {
        const res = await fetch("http://127.0.0.1:5000/inscription", {
            method: "POST",
            headers: {

                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                nom : newClientNom,
                prenom : newClientPrenom,
                email: newClientEmail,
                age: newClientAge,
                telephone: newClientTelephone,
                password: newClientPassword
            })
        }).then(function(response){
            return response.json();
        })

        response = await res.json()

        if(response.status === 200){
            window.location.href = "http://127.0.0.1:5000/home"

        } else{
            let validation = document.createElement("div")
            validation.innerText = "Le email que vous utilisez est dejà associé à un autre compte";
            validation.innerText = "Essayez avec un autre email."

            let container = document.getElementById("addUser-container");
            container.appendChild(validation);
        }
    } catch (err){
        console.log("La requête n'a pas été reçue.")
    }
}

async function login() {
    debugger
    let email = document.getElementById("email").value
    let password = document.getElementById("password").value

    try {
        const res = await fetch("http://127.0.0.1:5000/connection", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                email: email,
                motDePasse: password
            })
        })

        response = await res.json()


        if (response.status === 200){
            debugger
            localStorage.setItem("email", `${email}`)
            window.location.href = "http://127.0.0.1:5000/home"

        } else {
            let erreurConnexion = document.createElement('div')
            erreurConnexion.innerText = "L’adresse e-mail ou le mot de passe que vous avez saisi n’est pas le bon, réessayez"
            let container = document.getElementById("container")
            container.appendChild(erreurConnexion)
        }
    } catch (err){
        console.log("Erreur de connexion de l'utilisateur")
    }
}

async function getProducts() {
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
    } else {
        let url = "http://127.0.0.1:5000/"

        const res = await fetch("http://127.0.0.1:5000/products")
        response = await res.json()

        const products = response.products
        products.forEach(product => {
            displayProduct(product);
            document.getElementsByName("wesh")
        })

        document.getElementsByName("carte").forEach(carte => {
            carte.addEventListener('click', () => {
                goProductPage(carte.id)
            })
        })

    }
}

async function chargerPanier() {
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        debugger
        try {
            const res = await fetch("http://127.0.0.1:5000/produitsDuPanier", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({
                    email: localStorage.getItem("email"),
                })
            })
            let response = (await res.json())

            const products = response.products

            let prix = 0;
            products.forEach(product => {
                displayProductInPanier(product[0])
                prix += product[0][5]
            })
            const total = document.createElement('h1')
            total.setAttribute('id', 'priceTotal')
            total.innerText = prix + " $";
            const div = document.getElementById('total')

            div.appendChild(total)
        } catch (e) {
            console.log(e.message)
        }
    }
}

function displayProductInPanier(product){
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
    } else {
        let productContainer = document.getElementById("containerInPanier")

        let id = product[0]
        let image = product[1]
        let nom = product[2]
        let price = product[5]
        let en_stock = product[5]

        let productDiv = document.createElement("div")
        productDiv.setAttribute('id', 'productContainerInCart')

        let infosDiv = document.createElement("div")
        infosDiv.setAttribute('id', 'infoDiv')


        let title = document.createElement("h1")
        title.innerText = nom


        let prix = document.createElement("h3")
        prix.innerText = price + " $"

        infosDiv.appendChild(title);
        infosDiv.appendChild(prix);


        productContainer.appendChild(infosDiv)
    }
}

async function displayProduct(product) {
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        let productContainer = document.getElementById("ProductContainer")

        let id = product[0]
        let image = product[1]
        let nom = product[2]
        let couleur = product[3]
        let price = product[4]
        let en_stock = product[5]

        let productDiv = document.createElement("div")
        productDiv.classList.add("card")
        productDiv.setAttribute('name', 'carte')
        productDiv.setAttribute('id', `${id}`)

        let img = document.createElement('img')
        img.setAttribute('src', image)
        // card-body
        let div = document.createElement('div')
        div.classList.add("card-body")
        // card-title
        let h5 = document.createElement('h1')
        h5.classList.add("card-title")
        h5.innerText = nom;
        div.appendChild(h5)

        //price
        let p1 = document.createElement('h5')
        h5.classList.add("card-text")
        p1.innerText = "Prix : " + price;
        div.appendChild(p1)
        // color
        let p2 = document.createElement('h5')
        p2.innerText = "Couleur : " + couleur;
        div.appendChild(p2)

        //taille
        // let p3 = document.createElement('h5')
        // p3.innerText = "Taille : " + taille;
        // div.appendChild(p3)

        // let button = document.createElement('button')
        // button.innerText = "ajouter au panier";
        // button.addEventListener('click', ()=>{ajouterProduitAuPanier(id)})
        // div.appendChild(button)

        productDiv.appendChild(img)
        productDiv.appendChild(div)

        productContainer.appendChild(productDiv)
    }


}
function goPanier(){
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        window.location.href = "http://127.0.0.1:5000/Panier"
    }
}

async function goProductPage(id) {
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        window.location.href = `http://127.0.0.1:5000/productPage?id=${id}`
    }
}

async function getProduct(id){
    const res = await fetch("http://127.0.0.1:5000/getProduct", {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            id: id,
        })
    })
    return (await res.json())
}


async function ajouterProduitAuPanier(){
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        debugger
        let selectionMenu = document.getElementById('tailles')
        const id = selectionMenu.value
        try {
            const res = await fetch("http://127.0.0.1:5000/addProductToCart", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({
                    email: localStorage.getItem("email"),
                    id: id,
                })
            })

            const div = document.getElementById('message')
            const infosDajout = document.createElement('div')
            infosDajout.innerText = "produit ajouté"
            div.appendChild(infosDajout)
        } catch (e) {
            console.log(e.message)
        }
    }
}


function displayCommande(commande) {
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        divContainer = document.getElementById('commandeContainer')

        commandeDiv = document.createElement('div')
        commandeDiv.setAttribute('id', 'commande')

        numeroDeCommande = document.createElement('h3')
        numeroDeCommande.innerHTML = " Commande " + commande[0]

        prixDeCommande = document.createElement('h3')
        prixDeCommande.innerHTML = "Prix : " + commande[2]

        commandeDiv.appendChild(numeroDeCommande)
        commandeDiv.appendChild(prixDeCommande)

        divContainer.appendChild(commandeDiv)
    }
}

async function getCommandes(){
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        const res = await fetch(`http://127.0.0.1:5000/getCommandes`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                email: localStorage.getItem("email")
            })
        })

        response = await res.json()

        response.forEach(commande => {
            displayCommande(commande)
        })
    }
}

async function ViderPanier() {
    if (localStorage.getItem('email') === ""){
    window.location.href= "http://127.0.0.1:5000";
} else {
        const res = await fetch(`http://127.0.0.1:5000/viderPanier`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                email: localStorage.getItem("email")
            })
        })
        const divOfProduct = document.getElementById("containerInPanier")
        divOfProduct.innerText = "";
        const total = document.getElementById("priceTotal")
        total.innerHTML = "0 $"
    }
}

async function deconexion(){
    localStorage.setItem("email", '')
    window.location.href = "http://127.0.0.1:5000"
}

async function commander(){
    const res = await fetch(`http://127.0.0.1:5000/Commander`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                email : localStorage.getItem("email")
            })
        })

    window.location.href= `http://127.0.0.1:5000/Confirmation`
}

async function getTailleOfModel(id) {
    debugger
    const res = await fetch(`http://127.0.0.1:5000/product?id=${id}`)
    response = await res.json()

    debugger;
    let div = document.getElementById('tailles')
    response.forEach(product => {
        let option = document.createElement('option')
        option.setAttribute('value',product[0])
        option.innerText = product[1]
        div.appendChild(option)
    })
    return response;
}

async function getPrixOfTaille(){
    let selectionMenu = document.getElementById('tailles')
    const id = selectionMenu.value
    const res = await fetch(`http://127.0.0.1:5000/prix?id=${id}`)
    response = await res.json()

    let Price = document.getElementById('prix')
    Price.innerText = "Prix: " + response +" $"
}