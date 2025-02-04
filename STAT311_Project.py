print("Group Members : Aişe Esra Gönen - Ayşe Büşra Aktaş - Düzgün Ali Özdemir - Melisa Çepni")
print("-----------------------------------------------------------------")




import pymysql


############################################################################


connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 1:--------------------------------------------------------------")


cursor.execute("SELECT SUM(Amount) AS 'Sumation', COUNT(Amount) AS 'Count', MAX(Amount) AS 'Maximum Payment', MIN(Amount) AS 'Minimum Payment', ROUND(AVG(Amount),2) AS 'Average Payment' FROM PAYMENT;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 2:--------------------------------------------------------------")
cursor.execute("SELECT c.First_Name, c.Last_Name, sum(p.Amount) as Total_Amount FROM CUSTOMER c  JOIN PAYMENT p on c.Customer_ID=p.Customer_ID GROUP BY c.First_Name, c.Last_Name ORDER BY Total_Amount DESC;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 3:--------------------------------------------------------------")
cursor.execute("SELECT c.First_Name, c.Last_Name, s.Store_ID , st.Staff_Name, st.Staff_Surname FROM CUSTOMER c JOIN STORE s on c.Store_ID=s.Store_ID JOIN STAFF st on s.Store_ID=st.Store_ID")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 4:--------------------------------------------------------------")
cursor.execute("SELECT a.Actor_Name, a.Actor_Surname, f.Title FROM ACTOR a JOIN FILM_ACTOR fa ON a.Actor_ID = fa.Actor_ID JOIN FILM f ON fa.Film_ID = f.Film_ID WHERE a.Actor_Name LIKE 'T%';")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 5:--------------------------------------------------------------")
cursor.execute("SELECT DISTINCT c.First_Name, c.Last_Name, f.Title AS Rented_Film FROM CUSTOMER c JOIN RENTAL r ON c.Customer_ID = r.Customer_ID JOIN INVENTORY i ON r.Inventory_ID = i.Inventory_ID JOIN FILM f ON i.Film_ID = f.Film_ID WHERE f.Title = 'The Godfather';")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 6:--------------------------------------------------------------")
cursor.execute("SELECT f.Title, c.Name AS Category FROM CATEGORY c join FILM_CATEGORY fc on c.Category_ID=fc.Category_ID join FILM f on fc.Film_ID = f.Film_ID;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 7:--------------------------------------------------------------")
cursor.execute("SELECT f.Title AS Film_Title, COUNT(r.Rental_ID) AS Rental_Count FROM FILM f JOIN INVENTORY i ON f.Film_ID = i.Film_ID JOIN RENTAL r ON i.Inventory_ID = r.Inventory_ID GROUP BY f.Title ORDER BY Rental_Count DESC LIMIT 1;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 8:--------------------------------------------------------------")
cursor.execute("SELECT c.First_Name, c.Last_Name, f.Title  FROM INVENTORY i   JOIN RENTAL r on i.Inventory_ID=r.Inventory_ID JOIN CUSTOMER c on r.Customer_ID=c.Customer_ID JOIN FILM f on i.Film_ID=f.Film_ID")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 9:--------------------------------------------------------------")
cursor.execute("SELECT f.Title, COUNT(r.Inventory_ID) as 'Rented Count' FROM INVENTORY i  JOIN RENTAL r on i.Inventory_ID = r.Inventory_ID JOIN FILM f on i.Film_ID=f.Film_ID GROUP BY f.Title")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 10:--------------------------------------------------------------")
cursor.execute("SELECT r.Rental_ID, f.Title AS Film_Title, c.First_Name, c.Last_Name, r.Rental_Date, r.Return_Date FROM RENTAL r JOIN INVENTORY i ON r.Inventory_ID = i.Inventory_ID JOIN FILM f ON i.Film_ID = f.Film_ID JOIN CUSTOMER c ON r.Customer_ID = c.Customer_ID WHERE r.Rental_Date BETWEEN '2024-01-01' AND '2024-12-31';")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 11:--------------------------------------------------------------")
cursor.execute("SELECT s.Staff_Name, s.Staff_Surname, SUM(p.Amount) AS Total_Sales_Payment, COUNT(p.Amount) as Total_Number_Of_Sales FROM STAFF s JOIN PAYMENT p ON s.Staff_ID = p.Staff_ID GROUP BY s.Staff_ID ORDER BY Total_Sales_Payment DESC;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 12:--------------------------------------------------------------")
cursor.execute("SELECT c.Store_ID, SUM(p.Amount) as Total_Sell FROM CUSTOMER c JOIN PAYMENT p ON p.Customer_ID = c.Customer_ID GROUP By c.Store_ID;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 13:--------------------------------------------------------------")
cursor.execute("SELECT ci.City, COUNT(c.Customer_ID) AS Total_Customers FROM CUSTOMER c JOIN ADDRESS a ON c.Address_ID = a.Address_ID JOIN CITY ci ON a.City_ID = ci.City_ID GROUP BY ci.City_ID ORDER BY Total_Customers DESC LIMIT 1;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 14:--------------------------------------------------------------")
cursor.execute("SELECT f.Title AS Film_Title, c.Name AS Category_Name FROM FILM f JOIN FILM_CATEGORY fc ON f.Film_ID = fc.Film_ID JOIN CATEGORY c ON fc.Category_ID = c.Category_ID WHERE c.Name = 'Action';")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 15:--------------------------------------------------------------")
cursor.execute("SELECT c.First_Name, c.Last_Name, f.Title AS Film_Title, r.Rental_Date FROM RENTAL r JOIN INVENTORY i ON r.Inventory_ID = i.Inventory_ID JOIN FILM f ON i.Film_ID = f.Film_ID JOIN CUSTOMER c ON r.Customer_ID = c.Customer_ID ORDER BY r.Rental_Date DESC LIMIT 1;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 16:--------------------------------------------------------------")
cursor.execute("SELECT f.Title, i.Store_ID FROM FILM f JOIN INVENTORY i ON f.Film_ID = i.Film_ID;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 17:--------------------------------------------------------------")
cursor.execute("SELECT c.First_Name, c.Last_Name, (r.Return_Date-r.Rental_Date) as 'Rental Duration (Day)' FROM INVENTORY i   JOIN RENTAL r on i.Inventory_ID=r.Inventory_ID JOIN CUSTOMER c on r.Customer_ID=c.Customer_ID JOIN FILM f ON i.Film_ID=f.Film_ID ORDER BY (r.Return_Date-r.Rental_Date) DESC;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")
print("Question 18:--------------------------------------------------------------")
cursor.execute("SELECT ci.City, SUM(p.Amount) AS Total_Payment FROM PAYMENT p JOIN CUSTOMER c ON p.Customer_ID = c.Customer_ID JOIN ADDRESS a ON c.Address_ID = a.Address_ID JOIN CITY ci ON a.City_ID = ci.City_ID GROUP BY ci.City ORDER BY Total_Payment DESC LIMIT 1;")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

############################################################################

connection = pymysql.connect(host="localhost", port=3306, user="root", passwd="_23StudenT47_", database="STAT311_PROJECT")
cursor = connection.cursor()

print("Connection Established")

print("Question 19:--------------------------------------------------------------")
cursor.execute("SELECT a.Actor_Name, a.Actor_Surname, f.Title FROM ACTOR a JOIN FILM_ACTOR fa ON a.Actor_ID = fa.Actor_ID JOIN FILM f ON fa.Film_ID = f.Film_ID WHERE f.Title = 'The Godfather';")


myresult = cursor.fetchall()

for x in myresult:
  print(x)
  
myresult = cursor.fetchall()

connection.close()

