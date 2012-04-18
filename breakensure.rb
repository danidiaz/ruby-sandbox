def fun
    begin
        yield
        11
    ensure 
        17
    end 
end

puts (fun { 4 })
puts (fun { break 4 })
