function Fonction1()
{
	document.getElementsByName("ligne1")[0].style.color="red"
	document.getElementsByName("ligne1")[0].innerHTML="Ligne <i>mise &agrave; jour</i> par fonction JavaScript."
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
    console.log("wesh")
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
            window.location.href = "http://127.0.0.1:5000/home"
        } else {
            document.createElement('div').innerText("mot de passe ou email incorrect")
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
        displayProduct(product)
    })
}

function displayProduct(product){
    let productContainer = document.getElementById("ProductContainer")

    let name = product[1]
    let color = product[2]
    let taille = product[3]
    let price = product[4]

    let productDiv = document.createElement("div")
    productDiv.classList.add("card")

    let img =  document.createElement('img')
    img.setAttribute('src', "https://cdn.shopify.com/s/files/1/0257/5305/9400/products/adidas-Yeezy-Slide-Bone-2022-Product.webp?v=1679272266")
    // card-body
    let div = document.createElement('div')
    div.classList.add("card-body")
    // card-title
    let h5 = document.createElement('h5')
    h5.classList.add("card-title")
    h5.innerText = name;
    div.appendChild(h5)

    //price
    let p1 = document.createElement('h5')
    h5.classList.add("card-text")
    p1.innerText = "Prix : " + price;
    div.appendChild(p1)
    // color
    let p2 = document.createElement('h5')
    p2.innerText = "Couleur : " + color;
    div.appendChild(p2)

    //taille
    let p3 = document.createElement('h5')
    p3.innerText = "Taille : " + taille;
    div.appendChild(p3)

    let button = document.createElement('button')
    button.innerText = "ajouter au panier";
    div.appendChild(button)

    productDiv.appendChild(img)
    productDiv.appendChild(div)


    productContainer.appendChild(productDiv)
}

function inscriptionButton(){
    var newNom= document.getElementById("newClientNom-input")
    var newPrenom = document.getElementById("newClientPrenom-input").value
    var newAge = document.getElementById("newClientAge-input").value
    var newTelephone = document.getElementById()
}