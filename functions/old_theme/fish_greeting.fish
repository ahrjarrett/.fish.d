function fish_greeting
  # Customize fish greeting message
  #echo "foldl :: (b -> a -> b) -> b -> [a] -> b"
  #echo "foldl _ v [] = v"
  #echo "foldl f v (x:xs) = foldl f (f v x) xs"
  #echo "(.) :: (𝞫 -> 𝞬) -> (𝞪 -> 𝞫) -> 𝞪 -> 𝞬"
  #echo "(.) :: (𝝱 -> 𝝲) -> (𝝰 -> 𝝱) -> 𝝰 -> 𝝲"
  echo (__color_dim)"(.) :: (b -> c) -> (a -> b) -> a -> c"
  echo "f . g = \x -> f (g x)"
end
