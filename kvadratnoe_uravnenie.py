import cmath

# Ввод коэффициентов
print("Эта программа предназначена для решения квадратных уровнений")
print("если число a b c отрицательное, не забудь поставить знак - перед числом") 
a = float(input("Введите коэффициент a: "))
b = float(input("Введите коэффициент b: "))
c = float(input("Введите коэффициент c: "))

# Проверка, что уравнение квадратное
if a == 0:
    print("Ошибка: коэффициент a не может быть равен 0")
    exit()

# Вычисление дискриминанта
discriminant = b**2 - 4 * a * c

# Вычисление корней
root1 = (-b + cmath.sqrt(discriminant)) / (2 * a)
root2 = (-b - cmath.sqrt(discriminant)) / (2 * a)

# Вывод результатов в зависимости от типа корней
if discriminant > 0:
    print(f"Два действительных корня: {root1.real:.2f} и {root2.real:.2f}")
elif discriminant == 0:
    print(f"Один действительный корень: {root1.real:.2f}")
else:
    print(f"Два комплексных корня: {root1:.2f} и {root2:.2f}")
