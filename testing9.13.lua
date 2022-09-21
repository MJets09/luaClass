function noPlaceLike(foo)
    local bar = math.random(foo)
    for i = 1, bar do
        print("There's no place like home.")
    end
end

noPlaceLike(3)