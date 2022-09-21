

import Foundation

//№1.  Используя условные операторы, функции и циклы создать следующую программу:
//
//Разобрать числа от 1 до 1000
//Выписать через запятую все числа, кратные 2, 3, 4, 5 (для каждого числа разные переменные)
var numTwo: String = ""
var numThree: String = ""
var numFour: String = ""
var numFive: String = ""
for item in 1...100  {
    
    if item % 2 == 0 {
        numTwo += "Числа кратное  2 2= \(item), "
    } else if item % 3 == 0 {
        numThree += "Числа кратные 3 = \(item), "
    }else if item % 4 == 0 {
       numFour += "Числа кратные 4 = \(item), "
    }else if item % 5 == 0 {
        numFive += "Числа кратные 5 = \(item), "
    }
    print(numTwo)
    print(numThree)
    print(numFour)
    print(numFive)
}

//№2.
//Создать программу используя известные вам методы
//Рассчитать сумму кредита. Изначально сумма - 1000000 сом
//Процентная ставка в год - 24%
//С каждым годом % снижается на 1
//Рассчитать за какой срок человек сможет выплатить кредит, если на момент получения кредита его зарплата - 20000 сом и каждые 2 месяца она увеличивается на 2000
//

var credit: Float = 1_000_000
var money = 0
var salary: Float = 20_000
var percentBank: Float = 0.24
var moth = 0
credit += credit * percentBank // 1_240_000

for i in 1...100 {
    moth += 1
    if i % 2 == 0 {
        salary += 2000 // каждые 2 месяца зарплата повышается на 2000сом
    }
    if i % 12 == 0 {
        credit += credit * percentBank
        percentBank -= 0.01
    }
    print(credit)
    let oneMoth  = percentBank / 12
    let moneyWePayInThis = salary * (1 - (oneMoth / 100))
    credit -= moneyWePayInThis

    if credit < 0 {
        break
    }
}
print("Миллион рублей можно выплатить за \(moth) месяцев")
