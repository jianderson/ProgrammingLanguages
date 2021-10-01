-- A Virtual Machine (VM) for Arithmetic (template)

-----------------------
-- Data types of the VM
-----------------------

-- Natural numbers
data NN = O | S NN
  deriving (Eq,Show) -- for equality and printing

-- Integers
data II = II NN NN
  deriving (Eq,Show) -- for equality and printing

-- Positive integers (to avoid dividing by 0)
data PP = I | T PP
  deriving (Eq,Show)

-- Rational numbers
data QQ =  QQ II PP
  deriving (Eq, Show)

------------------------
-- Arithmetic on the  VM
------------------------

----------------
-- NN Arithmetic
----------------

-- add natural numbers
addN :: NN -> NN -> NN
addN O m = m
addN (S n) m = S (addN n m)

-- multiply natural numbers
multN :: NN -> NN -> NN
multN O m = O
multN (S n) m = addN (multN n m) m

----------------
-- II Arithmetic
----------------

-- Addition: (a-b)+(c-d)=(a+c)-(b+d)
addI :: II -> II -> II
addI (II a b) (II c d) = II (addN a c) (addN b d)

-- Multiplication: (a-b)*(c-d)=(ac+bd)-(ad+bc)
multI :: II -> II -> II
multI (II a b) (II c d) = II (addN (multN a c) (multN b d)) (addN (multN a d) (multN b c))

-- Subtraction: (a-b)-(c-d)=(a+d)-(b+c)
subtrI :: II -> II -> II
subtrI (II a b) (II c d) = II (addN a d) (addN b c)

-- Negation: -(a-b)=(b-a)
negI :: II -> II
negI (II a b) = II (b) (a)

----------------
-- QQ Arithmetic
----------------

--adding positive numbers
addP :: PP -> PP -> PP
addP I m = (T m)
addP (T n) m = T (addP n m)

-- multiply positive numbers
multP :: PP -> PP -> PP
multP I m = m
multP (T n) m = addP (multP n m) m

-- convert numbers of type PP to numbers of type II
ii_pp :: PP -> II
ii_pp I = II (S O) (O)
ii_pp (T n) = addI (II (S O) (O)) (ii_pp(n))

-- Addition: (a/b)+(c/d)=(ad+bc)/(bd)
addQ :: QQ -> QQ -> QQ
addQ (QQ a b) (QQ c d) = QQ (addI(multI(a)(ii_pp(d))) (multI(ii_pp(b))(c))) (multP(b)(d))

-- Multiplication: (a/b)*(c/d)=(ac)/(bd)
multQ :: QQ -> QQ -> QQ
multQ (QQ a b) (QQ c d) = QQ (multI(a)(c)) (multP(b)(d))

----------------
-- Normalisation
----------------

normalizeI :: II -> II
normalizeI (II O b) = (II O b)
normalizeI (II a O) = (II a O)
normalizeI (II (S a) (S b)) = normalizeI (II a b)

----------------------------------------------------
-- Converting between VM-numbers and Haskell-numbers
----------------------------------------------------

-- Precondition: Inputs are non-negative
nn_int :: Integer -> NN
nn_int 0 = O
nn_int n = S (nn_int (n-1))

int_nn :: NN->Integer
int_nn O = 0
int_nn (S n) = 1 + int_nn n

ii_int :: Integer -> II
ii_int 0 = II (O) (O)
ii_int n = II (nn_int(n)) (O)

int_ii :: II -> Integer
int_ii (II (O) (O)) = 0
int_ii (II (n) (m)) = int_nn(n) - int_nn(m)

-- Precondition: Inputs are positive
pp_int :: Integer -> PP
pp_int 1 = I
pp_int n = T(pp_int(n - 1))

int_pp :: PP->Integer
int_pp I = 1
int_pp (T n) = 1 + int_pp n

float_qq :: QQ -> Float
float_qq (QQ n m) = fromInteger(int_ii(n)) / fromInteger(int_pp(m))

------------------------------
-- Normalisation by Evaluation
------------------------------

nbv :: II -> II
nbv (II a b) = II (nn_int(int_nn(a)-int_nn(b))) (O)

----------
-- Testing
----------
main = do
    print $ "Our test cases:"
    print $ addN (S (S O)) (S O)
    print $ multN (S (S O)) (S (S (S O)))
    print $ addP (T I)(T I)
    print $ addI (II (S (S O)) (S O))  (II (S (S (S O))) (S (S O)))
    print $ multI (II (S (S O)) (S O))  (II (S (S (S O))) (S (S O)))
    print $ subtrI (II (S (S O)) (S O))  (II (S (S (S O))) (S (S O)))
    print $ negI (II (S (S (S O))) (S (S O)))
    print $ multP (T I)(T I)
    print $ ii_pp (T I)
    print $ nn_int (2)
    print $ int_nn (S(S O))
    print $ pp_int (3)
    print $ int_pp (T(T I))
    print $ addQ (QQ (II (S O) (O)) (T I)) (QQ (II (S(S O)) (O)) (T I))
    print $ multQ (QQ (II (S O) (O)) (T I)) (QQ (II (S O) (O)) (T I))
    print $ ii_int (4)
    print $ int_ii (II (S(S O)) (S O))
    print $ nbv (II (S (S (S O))) (S (S O)))
    print $ float_qq (QQ (II (S(S O)) (O)) (T(T I)))
    print $ normalizeI (II (S (S (S O))) (S (S O)))

    ----------
    -- Provided Test Cases From Specification 
    ----------
    let i = 4
    let j = 2
    let k = 1
    let l = 3
    print $ int_ii (addI (II (nn_int i) (nn_int j)) (II (nn_int k) (nn_int l)))
    print $ int_ii (multI (II (nn_int i) (nn_int j)) (II (nn_int k) (nn_int l)))
    -- Fractions: (QQ i j) represents i/j, (QQ k l) represents k/l
    print $ float_qq (addQ (QQ (ii_int i) (pp_int j)) (QQ (ii_int k) (pp_int l)))
    print $ float_qq (multQ (QQ (ii_int i) (pp_int j)) (QQ (ii_int k) (pp_int l)))
    -- Normalisation (recursive definition)
    print $ normalizeI (II (nn_int i) (nn_int j))
    -- Normalisation (by evaluation)
    print $ nbv (II (nn_int i) (nn_int j))
