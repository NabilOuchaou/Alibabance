
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

async function login() {
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
            erreurConnexion.innerText = "L’adresse e-mail ou le mot de passe que vous avez saisi(e) n’est pas associé(e) à un compte"
            let container = document.getElementById("container")
            container.appendChild(erreurConnexion)
        }
    } catch (err){
        console.log("erreur")
    }
}

async function getProducts() {
    let url = "http://127.0.0.1:5000/"

    const res = await fetch("http://127.0.0.1:5000/products")
    response = await res.json()

    const products = response.products
    products.forEach( product => {
        displayProduct(product);
        document.getElementsByName("wesh")
    })

    document.getElementsByName("carte").forEach( carte => {
        carte.addEventListener('click', () => {goProductPage(carte.id)} )})


}

async function chargerPanier() {
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
         let response =  (await res.json())

        const products = response.products

        products.forEach(product => {
            displayProductInPanier(product[0])
        })
    } catch (e) {
        console.log(e.message)
    }
}

function displayProductInPanier(product){
    let productContainer = document.getElementById("containerInPanier")
    debugger
    let id = product[0]
    let taille = product[4]
    let nom = product[2]
    let price = product[5]
    let en_stock = product[5]

    let productDiv = document.createElement("div")
    productDiv.setAttribute('id', 'productContainerInCart')

    let infosDiv = document.createElement("div")
    infosDiv.setAttribute('id', 'infoDiv')



    let title = document.createElement("h1")
    title.innerText=nom + ", taille : " + taille


    let prix = document.createElement("h3")
    prix.innerText= "prix : " + price

    infosDiv.appendChild(title);
    infosDiv.appendChild(prix);


    productContainer.appendChild(infosDiv)
}

async function displayProduct(product) {
    let productContainer = document.getElementById("ProductContainer")

    let id = product[0]
    let image = product[1]
    let nom = product[2]
    let couleur = product[3]
    let price = product[4]
    let en_stock = product[5]

    let productDiv = document.createElement("div")
    productDiv.classList.add("card")
    productDiv.setAttribute('name','carte')
    productDiv.setAttribute('id',`${id}`)

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

    let button = document.createElement('button')
    button.innerText = "ajouter au panier";
    button.addEventListener('click', ()=>{ajouterProduitAuPanier(id)})
    div.appendChild(button)

    productDiv.appendChild(img)
    productDiv.appendChild(div)




    productContainer.appendChild(productDiv)




}
function goPanier(){
    window.location.href = "http://127.0.0.1:5000/panier"
}

async function goProductPage(id) {
    window.location.href = `http://127.0.0.1:5000/productPage?id=${id}`
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
                email : localStorage.getItem("email"),
                id: id,
            })
        })

        const div = document.getElementById('message')
        const infosDajout = document.createElement('div')
        infosDajout.innerText = "produit ajouté"
        div.appendChild(infosDajout)
    } catch (e){
        console.log(e.message)
    }
}

async function getTailleOfModel(id) {
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

function inscription(){
    document.getElementById("")
}