--member function 
mymember :: Int -> [Int] -> Bool
mymember _ [] = False
mymember x (y:ys) = if y == x then True else mymember x ys

--remove function
myremove :: Int -> [Int] -> [Int]
myremove _ [] = []
myremove x (y:ys) = if x == y then ys else y : myremove x ys

--sum function
mysum :: [Int] -> Int
mysum [] = 0
mysum (x:xs) = x + mysum xs

--prod function
myprod :: [Int] -> Int
myprod [] = 1
myprod (x:xs) = x * myprod xs

--plus_two function
myplus_two :: Int -> Int
myplus_two x = x + 2

--map function
mymap :: (Int -> Int) -> [Int] -> [Int]
mymap func [] = []
mymap func (x:xs) = (func x) : (mymap func xs)

--insert function
myinsert :: Int -> [Int] -> [Int]
myinsert a [] = [a]
myinsert x (y:ys) = if x <= y then x : y : ys else y : myinsert x ys

--sort function
mysort :: [Int] -> [Int]
mysort [] = []
mysort (x:xs) = myinsert x (mysort xs)

--Our test cases - same as in solutions.lc
main = do
    --print $ mymember 2 []
    --print $ mymember 1 [2,3,1]
    --print $ mymember 5 [1,2,3]

    --print $ myremove 2 []
    --print $ myremove 2 [1,2,3,1,2,3]
    --print $ myremove 2 [1,3,4]

    --print $ mysum []
    --print $ mysum [1,2,3,4]
    --print $ mysum [0]

    --print $ myprod []
    --print $ myprod [1,2,3,4]
    --print $ myprod [0]

    --print $ myplus_two (3)
    --print $ myplus_two (0)

    --print $ mymap myplus_two []
    --print $ mymap myplus_two [1,2,3,4]
    --print $ mymap myplus_two [0]

    --print $ myinsert 3 []
    --print $ myinsert 3 [1,2,4]

    --print $ mysort []
    --print $ mysort [1,2,3,1,2,3]
    --print $ mysort [1,2,3,4]