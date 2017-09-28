# mongo_hello_world.py
# Author: Mazembo
# Date: 2017-08-28
# Purpose: To demonstrate how to use Python to
# 1) Connect to a MongoDB document collection
# 2) Insert a document
# 3) Display all of the documents in a collection</code>

from pymongo import MongoClient

# connect to the MongoDB locally
# replace the "" in the line below with your Mongodb address. The default is localhost:27017
# you can also use a local MongoDB instance
connection = MongoClient("localhost:27017")

# connect to the students database and the ctec121 collection
db = connection.test.names

# create a dictionary to hold student documents

# create dictionary
student_record = {}

# set flag variable
flag = True

# loop for data input
while (flag):
   # ask for input
   student_name, student_grade = input("Enter student name and grade: ").split(',')
   # place values in dictionary
   student_record = {'name':student_name,'grade':student_grade}
   # insert the record
   db.insert(student_record)
   # should we continue?
   flag = input('Enter another record? ')
   if (flag[0].upper() == 'N'):
      flag = False

# find all documents
results = db.find()

print()
print('+-+-+-+-+-+-+-+-+-+-+-+-+-+-')

# display documents from collection
for record in results:
# print out the document
    print(record['name'] + ',',record['grade'])

    print()

# close the connection to MongoDB
connection.close()
