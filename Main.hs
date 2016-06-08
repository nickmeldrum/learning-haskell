fizzbuzz = [if mod x 3 == 0 && mod x 5 == 0 then "fizzbuzz" else if mod x 3 == 0 then "fizz" else if mod x 5 == 0 then "buzz" else show x | x <- [1..100]]

compliments = [x ++ " is " ++ y | x <- ["damian", "pete", "rob"], y <- ["clever", "awesome", "powerful"]]

onlylowerCaseLetters :: [Char] -> [Char]
onlylowerCaseLetters input = [x | x <- input, x `elem` ['a'..'z']]
