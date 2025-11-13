import psycopg2

from config import DATABASES

# --- Conexión a base de datos de SEDES ---
def obtener_conexion():
    try:
        db = DATABASES["sedes_uneg"]
        conexion = psycopg2.connect(**db)
        return conexion
    except Exception as e:
        print(" Error al conectar a la base de datos sedes_uneg:", e)
        return None


# --- Conexión a base de datos de CATEGORÍAS y FALLAS ---
def obtener_conexion_categorias():
    try:
        db = DATABASES["categorias_fallas"]
        conexion = psycopg2.connect(**db)
        return conexion
    except Exception as e:
        print("Error al conectar a la base de datos categorias_fallas:", e)
        return None


# --- Conexión a base de datos de REPORTES GENERALES ---
def obtener_conexion_reportes_generales():
    try:
        db = DATABASES["reportes_generales"]
        conexion = psycopg2.connect(**db)
        return conexion
    except Exception as e:
        print("Error al conectar a la base de datos reportes_generales:", e)
        return None


# --- Conexión a base de datos de REPORTES GENERALES ---
def obtener_conexion_departamentos_db():
    try:
        db = DATABASES["departamentos_db"]
        conexion = psycopg2.connect(**db)
        return conexion
    except Exception as e:
        print("Error al conectar a la base de datos departamentos_db:", e)
        return None