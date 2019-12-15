from suds.client import Client

url = 'http://localhost:7777/ws/ServiciosJabonURLService'
wsdl = 'http://localhost:7777/ws/ServiciosJabonURLService?wsdl'

client = Client(url=wsdl, location=url)

def listarURLs(username):
    if username:
        pass
    else:
        lista = client.service.getAllURLS()
        for i in lista:
            for k,v in i:
                print(k,v)
            print("-------------")



def newUrl(origUrl,username):
    if origUrl:
        return client.service.insertarURL(origUrl,username)



while True:
    opcion = int(input('''\nPresione el numero de la opcion correspondiente
    (1) Listar URLs
    (2) Buscar las URL de un usuario
    (3) Crear una URL
    (q) Salir
    :'''))
    
    if (opcion == 1):
        listarURLs(False)

    elif (opcion == 2):
        id = input("\nDigite el usuario: ")
        print(listarURLs(id))

    elif (opcion==3):
        id = input("\nDigite el usuario (deje vacio para insertar como visitante): ")
        target = input("\nDigite la URL: ")
        print(newUrl(target,id))

    elif (opcion=='q'):
        break
    else:
        print("Digite una opcion valida")
    

    input("\nPresione cualquier tecla para continuar")