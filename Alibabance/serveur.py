import hashlib

from flask import Flask, render_template, request, jsonify
from database import isItInDb, getProductsFromDataBase, addProductToCartInDataBase, getInfoOfProduct, \
    getProductsInPanierFromDataBase, getInfoOfModel, getAvailableTailleOfSepeceficModel, addNewClientToDB

app = Flask(__name__)


@app.route("/")
def main():
    return render_template("login.html")


@app.route("/home", methods=["GET"])
def home():
    return render_template("bienvenu.html", )


@app.route("/panier", methods=["GET"])
def Panier():
    return render_template("Panier.html")

@app.route("/inscription", methods=["GET"])
def inscription():
    return render_template("inscription.html")

@app.route("/productPage", methods=["GET"])
def ProductPage():
    id = request.args.get('id')
    infos = getInfoOfModel(id)
    return render_template("productPage.html", infos=infos)

@app.route("/getProduct", methods=["GET"])
def ProductInfo():
    data = request.json
    id = data['id']
    infos = []
    for i in getInfoOfProduct(id):
        infos.append(i)

    response = {
        "infos": infos
    }
    return jsonify(infos)


@app.route("/inscription", methods=["GET"])
def takeEmail():
    return
def takePassword():
    return

@app.route("/ajoutUser", methods=["POST"])
def addUserEmail():
    return
def addUserPassword():
    return


@app.route("/connection", methods=["POST"])
def connection():
    data = request.json

    email = data["email"]
    password = data["motDePasse"]

    hasher = hashlib.sha3_224()
    hasher.update(password.encode('utf-8'))
    hashedPassword = hasher.hexdigest()

    presentInDb = isItInDb(email, hashedPassword)

    if (presentInDb):
        response = {
            "status": 200
        }
    else:
        response = {
            "status": 403,
            "reason": "L’adresse e-mail ou le mot de passe que vous avez saisi(e) n’est pas associé(e) à un compte"
        }

    return jsonify(response)


@app.route("/product", methods=["GET"])
def getProduct():
    id = request.args.get('id')
    return jsonify(getAvailableTailleOfSepeceficModel(id))

@app.route("/products", methods=["GET"])
def getProducts():
    products = getProductsFromDataBase()

    return products


@app.route("/produitsDuPanier", methods=["POST"])
def getProductsFromPanier():
    data = request.json
    email = data["email"]
    products = getProductsInPanierFromDataBase(email)

    return products


@app.route("/test", methods=["GET"])
def get_test():
    response = {
        "wesh": 300,
        "oll": "caca"
    }

    zebi = jsonify(response)
    return zebi


@app.route("/addProductToCart", methods=["POST"])
def addProductToCart():
    data = request.json

    email = data["email"]
    id = data["id"]

    addProductToCartInDataBase(id,email)

    response = {
        "status": 200
    }
    return jsonify(response)


@app.route("/inscription", methods=["POST"])
def addUser():
    data = request.json

    telephone = data['telephone']
    prenom = data['prenom']
    nom = data["nom"]
    email = data["email"]
    password = data["password"]
    age = data["age"]

    hasher = hashlib.sha3_224()
    hasher.update(password.encode('utf-8'))
    hashedPassword = hasher.hexdigest()
    addNewClientToDB(prenom,nom,age,telephone,email,hashedPassword)


if __name__ == '__main__':
    app.run()
