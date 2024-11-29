'''
Mini-project: HomeWork
Create a Calculator
Ask the user to enter a command "add","sub","mult","div" and two numbers to simulate a 
calculator. 
All of your functions are in a separate script calc.py Your main code is in main.py
Bonus: 
ask the user if he would like to make another operation or not. 
if yes, do it all over again in 
the same run.
only exit the program if he says 'stop'
'''
def add(a,b):
    return a+b
def sub(a,b):
    return a-b
def Multiply(a,b):
    return a*b
def divide(a,b):
    if b!=0:
      return a/b
def dot(a,b):
    return a[0]*b[0]+a[1]*b[1]