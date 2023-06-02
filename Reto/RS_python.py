# Archivo fuente para el resaltador de sintaxis
# Carlos Soto Alarcón

def factorial(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)

num = 5
result = factorial(num)
print(f"The factorial of {num} is {result}")
