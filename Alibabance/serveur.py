from flask import Flask, render_template, request, jsonify
from database import isItInDb, getProductsFromDataBase, addNewClientToDB

app = Flask(__name__)


@app.route("/")
def main():
    return render_template("login.html")


@app.route("/home", methods=["GET"])
def home():
    return render_template("bienvenu.html", )

@app.route("/ajoutUser", methods=["POST"])
def addUserEmail():
    pass
def addUserPassword():
    pass

@app.route("/connection", methods=["POST"])
def connection():
    data = request.json

    email = data["email"]
    password = data["motDePasse"]

    presentInDb = isItInDb(email, password)

    if (presentInDb):
        response = {
            "status": 200
        }
    else:
        response = {
            "status": 404,
            "reason": "L’adresse e-mail ou le mot de passe que vous avez saisi(e) n’est pas associé(e) à un compte"
        }

    return jsonify(response)



@app.route("/products", methods=["GET"])
def getProducts():
    products = getProductsFromDataBase()

    return products

@app.route("/inscription", methods=["GET"])
def inscription():
    data = request.json

    nom = data["nom"]
    email = data["email"]
    password = data["password"]
    age = data["age"]
    telephone = data["telephone"]
    prenom = data["prenom"]



    # newClientNom = request.form.get("newClientNom-input")
    # newClientPrenom = request.form.get("newClientPrenom-input")
    # newClientAge = request.form.get("newClientAge-input")
    # newClientTelephone = request.form.get("newClientTelephone-input")
    # newClientEmail = request.form.get("newClientEmail-input")
    # newClientPassword = request.form.get("newClientPassword-input")
    # newClientPassword2 = request.form.get("newClientPassword2-input")

# get    data = request.json
#
#     email = data["email"]
#     password = data["motDePasse"]
#     alreadyInDb = isItInDb(newClientEmail, newClientPassword)
#
#     if (alreadyInDb):
#         response = {
#             "status": 404,
#             "reason": "Cet email est déjà associé à un compte, essayez de récupérer votre mot de passe."
#         }
#     else:


    addNewClientToDB(email, nom, prenom, telephone, age)



    response = {
            "status": 200,
            "nom": nom,
        "email" : email,
        "password" : password

        }
    return jsonify(response)



@app.route("/test", methods=["GET"])
def get_test():
    response = {
        "wesh": 300,
        "oll": "caca"
    }

    zebi = jsonify(response)
    return zebi


if __name__ == '__main__':
    app.run()
