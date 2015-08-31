module RewriteLetAsWhere where

-- Rewrite the following let expressions as functions with where clauses:

-- 1. let x = 3; y = 1000 in x * 3 + y
expr1 = x * 3 + y
  where
    x = 3
    y = 1000

-- 2. let y = 10; x = 10 * 5 + y in x * 5
expr2 = x * 5
  where
    y = 10
    x = 10 * 5 + y

-- 3. let x = 7; y = negate x; z = y * 10 in z / x + y
expr3 = z / x + y
  where
    x = 7
    y = negate x
    z = y * 10
