import pymysql
from flask import jsonify

connection = pymysql.connect(
    host="localhost",
    user="root",
    password="String123",
    db="glo_2005_webapp_2023",
    autocommit=True
)

cursor = connection.cursor()


def isItInDb(Vemail, Vpassword):
    request = f""" SELECT email FROM Utilisateurs U WHERE U.email = '{Vemail}'"""

    requestPassword = f""" SELECT mot_de_passe FROM Passwords P WHERE P.mot_de_passe = '{Vpassword}' and P.email = '{Vemail}'"""

    cursor.execute(request)
    element = cursor.fetchall()
    try:
        email = element[0][0]
    except Exception as e:
        return False

    cursor.execute(requestPassword)

    element = cursor.fetchall()
    try:
        password = element[0][0]
    except Exception as e:
        return False

    if email == Vemail and Vpassword == password:
        return True
    else:
        return False


def addProductToCartInDataBase(id, email):
    request = f""" INSERT into Paniers(id_Produit, email) value ('{id}','{email}')"""
    cursor.execute(request)

def getInfoOfProduct(id):
    request = f""" SELECT * FROM Inventaire where id_produit= '{id}'"""
    cursor.execute(request)
    element = cursor.fetchall()
    return element

def getAvailableTailleOfSepeceficModel(id):
    request = f""" SELECT id_produit, taille FROM Inventaire where id_modele= '{id}'"""
    cursor.execute(request)
    element = cursor.fetchall()
    return element

def getInfoOfModel(id):
    request = f""" SELECT * FROM Produits where id_modele = '{id}'"""
    cursor.execute(request)
    element = cursor.fetchall()
    return element

def getProductsFromDataBase():
    request = f""" SELECT * FROM Produits"""

    cursor.execute(request)
    element = cursor.fetchall()
    tableOfTodos =[]

    for i in element:
        tableOfTodos.append(i)

    response = {
        "status": 200,
        "products": tableOfTodos
    }

    return jsonify(response)


def dropCartInDataBase(email):
    request = f""" delete FROM Paniers where email= '{email}'"""
    cursor.execute(request)

def getProductsInPanierFromDataBase(email):
    request = f""" SELECT * FROM Paniers where email= '{email}'"""
    cursor.execute(request)
    element = cursor.fetchall()
    tableOfTodos = []


    for i in element:
        produit = getInfoOfProduct(i[0]) # À changer
        tableOfTodos.append(produit)

    response = {
        "products": tableOfTodos
    }

    return jsonify(response)


def getCommandesFromDataBase(email):
    request = f""" SELECT * FROM Commandes where email= '{email}'"""
    cursor.execute(request)
    element = cursor.fetchall()

    response = {
        "elements": element
    }

    return response

def addNewClientToDB():
    request = f'''INSERT INTO Utilisateurs VALUES ()'''

    cursor.execute(request)

if __name__ == '__main__':
    print("we")