-- let rec member = \elem. \list.
--     if (hd list) = elem then 1 else
--         if (tl list) = # then 0 else
--             member elem (tl list)
-- in
-- member 3 2:1:3:#

-- member function 
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

main = do
    print $ mymember 3 [1,2,3]
    --print $ mysum [-3,5]
    --print $ myprod [4,5,3]
    --print $ myplus_two (0)
    --print $ myremove 2 [1,2,3]