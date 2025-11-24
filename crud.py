
import mysql.connector

def conectar():
    return mysql.connector.connect(
        host='localhost',
        user='root',
        password='sua_senha',
        database='Loja'
    )

def criar_cliente(nome, cpf):
    db = conectar()
    cursor = db.cursor()
    cursor.execute("INSERT INTO Cliente (nome, cpf) VALUES (%s, %s)", (nome, cpf))
    db.commit()
    cursor.close()
    db.close()

def listar_clientes():
    db = conectar()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM Cliente")
    for row in cursor.fetchall():
        print(row)
    cursor.close()
    db.close()

def atualizar_cliente(id, nome, cpf):
    db = conectar()
    cursor = db.cursor()
    cursor.execute("UPDATE Cliente SET nome=%s, cpf=%s WHERE id=%s", (nome, cpf, id))
    db.commit()
    cursor.close()
    db.close()

def deletar_cliente(id):
    db = conectar()
    cursor = db.cursor()
    cursor.execute("DELETE FROM Cliente WHERE id=%s", (id,))
    db.commit()
    cursor.close()
    db.close()

if __name__ == "__main__":
    print("Exemplo de CRUD funcionando.")
    listar_clientes()