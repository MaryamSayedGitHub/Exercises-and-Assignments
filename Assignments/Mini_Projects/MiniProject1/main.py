from Calc import add , sub ,Multiply,divide,dot
def run():
    print("------------Mathimatic operations---------- \n[1]add  \n[2]sub \n[3]multiply \n[4]divide \n[5]dot product\n ")
    choice=int(input("choose mathimatic operation number="))
    if choice==1 or choice==2 or choice==3 or choice==4:
        A=int(input("Enter first number = "))
        B=int(input("Enter second number = "))
    if choice==1:
        print(f"ADD result {A} + {B}  =",add(A,B))
    elif choice==2:
        print(f"SUB result {A} - {B}  =",sub(A,B))
    elif choice==3:
        print(f"Multiply result {A} * {B}  = {Multiply(A,B)}")
    elif choice==4:
        print(f"divide result {A} / {B}  =",divide(A,B))
    elif choice==5:
        A=[]
        B=[]
        A_1=int(input("Enter first num in vector A  = "))
        A.append(A_1)
        A_2=int(input("Enter second num in vector A  = "))
        A.append(A_2)
        B_1=int(input("Enter first num in vector B  = "))
        B.append(B_1)
        B_2=int(input("Enter second num in vector B  = "))
        B.append(B_2)
        print(f"dot result {A} . {B}  =",dot(A,B))
    else:
        print("invalide choice-_-")

run()

print("would you like to make another operation or not ?")
choice_repeat=str(input("choose yes or no :"))
if(choice_repeat!="yes" and choice_repeat!="YES" and choice_repeat!="no" and choice_repeat!="NO"):
    print("Invalide choice -_-")
while(choice_repeat=="yes" or choice_repeat=="YES" ):
    run()
else  :
    print('stop')
