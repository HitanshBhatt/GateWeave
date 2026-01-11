from utils.sql_connector import get_connection

conn = get_connection()
cursor = conn.cursor()
cursor.execute("SELECT DB_NAME()")
print(cursor.fetchone())
conn.close()