{-
    多行注释
-}
doubleMe x = x + x
doubleUs x y = x * 2 + y * 2
-- 定义一个函数 （单行注释）
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2