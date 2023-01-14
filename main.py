import psycopg2

username = ''
password = ''
database = ''
host = 'localhost'
port = '5432'

query1 = '''
SELECT brand, COUNT(cellphones_rating.cellphone_id) AS Amount
FROM cellphones_data
INNER JOIN cellphones_rating
ON cellphones_data.cellphone_id = cellphones_rating.cellphone_id
GROUP BY cellphones_data.brand
'''

query2 = '''
SELECT model, AVG(rating) AS Rating
FROM cellphones_data
INNER JOIN cellphones_rating
ON cellphones_data.cellphone_id = cellphones_rating.cellphone_id
GROUP BY cellphones_data.model
'''

query3 = '''
SELECT gender, COUNT(gender) AS Amount FROM cellphones_users
GROUP BY gender
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur1 = conn.cursor()
    cur1.execute(query1)
    brand = []
    b_amount = []

    for i in cur1:
        brand.append(i[0])
        b_amount.append(i[1])

    for i in range(len(brand)):
        print(brand[i], '  ', b_amount[i])
    
    print('\n')

    
    cur2 = conn.cursor()
    cur2.execute(query2)
    models = []
    rating = []

    for i in cur2:
        models.append(i[0])
        rating.append(i[1])

    for i in range(len(models)):
        print(models[i], '  ', rating[i])

    print('\n')


    cur3 = conn.cursor()
    cur3.execute(query3)
    gender = []
    g_amount = []

    for i in cur3:
        gender.append(i[0])
        g_amount.append(i[1])

    for i in range(len(gender)):
        print(gender[i], '  ', g_amount[i])
    
    print('\n')