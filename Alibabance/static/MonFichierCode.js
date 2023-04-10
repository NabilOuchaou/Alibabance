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
