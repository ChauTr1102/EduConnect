import psycopg2
conn=psycopg2.connect(database='Educonnect',host='localhost', port= '5432', user='postgres', password='12345678')
cur = conn.cursor()
conn.set_session(autocommit = True)

cur.execute("select * from users")
a = cur.fetchall()
print(len(a))