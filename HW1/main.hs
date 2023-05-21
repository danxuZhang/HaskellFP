import CreditCard
import Hanoi

main :: IO()

main = do
    
    putStrLn "Credit Card Validation: "
    putStrLn $ "Validate true:\t" ++ show (validate 4012888888881881) 
    putStrLn $ "Validate false:\t" ++ show (validate 4012888888881882)
    putStrLn ""    
    putStrLn "Hanoi: "
    putStrLn $ "hanoi 2 a b c: \t" ++ show (hanoi 2 "a" "b" "c")

