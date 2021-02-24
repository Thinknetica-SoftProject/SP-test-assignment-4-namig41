## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:


File.open("./data/1.txt", "r") do |file|
  data = file.read
  ans = 0

  for i in 0..data.size do
    if (data[i] == "(")
      ans += 1;
    end
    if (data[i] == ")")
      ans -= 1;
    end
  end
  puts ans
end
