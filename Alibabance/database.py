import pymysql
from flask import jsonify

connection = pymysql.connect(
    host="localhost",
    user="root",
    password="passworddatabases",
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


def getProductsFromDataBase():
    request = f""" SELECT * FROM Inventaire"""

    cursor.execute(request)
    element = cursor.fetchall()
    tableOfProducts =[]

    for i in element:
        tableOfProducts.append(i)

    response = {
        "status": 200,
        "products": tableOfProducts
    }

    return jsonify(response)

def addNewClientToDB():


    request = f'''INSERT INTO Utilisateurs VALUES (newClientEmail, newClientNom, newClientPrenom, newClientTelephone, newClientAge)'''

    cursor.execute(request)

if __name__ == '__main__':
    print("Welcome")