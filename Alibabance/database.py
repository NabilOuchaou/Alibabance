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


def addProductToCartInDataBase(id, email):
    request = f""" INSERT into Paniers value ('{id}','{email}')"""
    cursor.execute(request)

def getInfoOfProduct(id):
    request = f""" SELECT * FROM Inventaire where id_produit= '{id}'"""
    cursor.execute(request)
    element = cursor.fetchall()
    return element
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

def addNewClientToDB(Email, Nom, Prenom, Telephone, Age):

    # request = f'''CREATE TRIGGER IsUserAlreadyInDb BEFORE INSERT ON Utilisateurs FOR EACH ROW BEGIN IF (select * FROM Utilisateurs WHERE email='newClientEmail') >= 1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utilisateur existe deja avec cet email'; ELSE INSERT INTO Utilisateurs VALUES (newClientEmail, newClientNom, newClientPrenom, newClientTelephone, newClientAge); END IF; END'''

    # cursor.execute(request)

    # trigger_sql = """
    #     CREATE TRIGGER IsUserAlreadyInDb BEFORE INSERT ON Utilisateurs
    #     FOR EACH ROW
    #     BEGIN
    #       DECLARE email_exists INT;
    #
    #       SELECT COUNT(*) INTO email_exists FROM Utilisateurs WHERE email = NEW.email;
    #
    #       IF email_exists >= 1 THEN
    #         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Un utilisateur existe deja avec cet email';
    #       END IF;
    #     END;
    #     """
    #
    # insert_sql = """
    # INSERT INTO Utilisateurs (email, nom, prenom, telephone, age)
    # VALUES (newClientEmail, newClientNom, newClientPrenom, newClientTelephone, newClientAge);
    # """
    #
    # try:
    #     with connection.cursor() as cursor:
    #         # Create the trigger
    #         cursor.execute(trigger_sql)
    #         connection.commit()
    #
    #         # Insert the new client
    #         cursor.execute(insert_sql, (new_client['email'], new_client['nom'], new_client['prenom'], new_client['telephone'], new_client['age']))
    #         connection.commit()
    #
    # except pymysql.err.InternalError as e:
    #     print(f"Error: {e}")
    # finally:
    #     connection.close()
    #
    # new_client = {
    #     "email": newClientEmail,
    #     "nom": newClientNom,
    #     "prenom": newClientPrenom,
    #     "telephone": newClientTelephone,
    #     "age": newClientAge
    # }
    request = f"""
        INSERT INTO Utilisateurs VALUE ('{Email}', '{Nom}', '{Prenom}', '{Telephone}', '{Age}');
        """

    cursor.execute(request)



if __name__ == '__main__':
    print("Welcome")