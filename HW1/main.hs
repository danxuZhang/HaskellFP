import CreditCard

main :: IO()

main = do
    
    putStrLn "Credit Card Validation: "
    putStrLn $ "Test True?\t" ++ show (validate 4012888888881881) 
    putStrLn $ "Test Flase?\t" ++ show (validate 4012888888881882)

