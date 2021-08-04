doubleMe x = x + x

doubleUs x y = (x * 2) + (y * 2)

doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

seanO'Connell = "Hello! I am Sean O'Connell"

-- return boom if item is multiple of 3 and odd or "bang" if multiple of 3 and even
boomBang xs = [if (x `mod` 2) == 1 then "boom" else "bang" | x <- xs, (x `mod` 3) == 0]
