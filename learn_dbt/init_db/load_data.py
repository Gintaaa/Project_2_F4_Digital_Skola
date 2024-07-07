import pandas as pd
from sqlalchemy import create_engine
import os

# Informasi koneksi PostgreSQL
db_user = 'postgres'
db_password = '12345678'
db_host = 'localhost'
db_port = '5434'
db_name = 'db_dskola'

# Membuat engine untuk koneksi ke PostgreSQL
engine = create_engine(f'postgresql+psycopg2://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')

# Path ke folder yang berisi file CSV
csv_folder = 'csv'

# Loop melalui setiap file dalam folder CSV
for filename in os.listdir(csv_folder):
    if filename.endswith('.csv'):
        # Path lengkap ke file CSV
        csv_file = os.path.join(csv_folder, filename)
        
        # Baca data dari file CSV
        df = pd.read_csv(csv_file)
        
        # Nama tabel, di sini kita menggunakan nama file (tanpa ekstensi) sebagai nama tabel
        table_name = os.path.splitext(filename)[0]
        
        # Memasukkan data ke dalam tabel di PostgreSQL
        df.to_sql(table_name, engine, if_exists='replace', index=False)
        
        print(f"Data dari {filename} berhasil dimuat ke PostgreSQL sebagai tabel {table_name}!")

print("Semua data berhasil dimuat ke PostgreSQL!")
