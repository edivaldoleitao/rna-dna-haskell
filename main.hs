
import Data.Char
import System.IO



main :: IO()
main = do texto <- readFile "dna.txt"
          let texto2 = rna (show texto)
          writeFile "rna.txt" texto2
          print texto2
          


rna :: String -> String
rna texto = map repl texto


ehValido :: String -> String
ehValido texto | '1' `elem` texto = "Filamento de DNA inválido!"
               | otherwise =  ""


repl :: Char -> Char
repl x | x == 'G' = 'C'     
       | x == 'C' = 'G'
       | x == 'T' = 'A'
       | x == 'A' = 'U'
       | x == '\n' = '\n'
       | x == '\\' = ' '
       | x == '\"' = ' '
       | otherwise = '1'
                  
           







