def fun1
    puts 'fun1-a'
    yield
    puts 'fun1-b'
    yield
    puts 'fun1-c'
end

def fun2
    puts 'fun2-a'
    fun1 {
        puts 'u1'
        yield
        puts 'u2'
    }  
    puts 'fun2-b'
    fun1 {
        puts 'v1'
        yield
        puts 'v2'
    }
    puts 'fun2-c'
end

fun2 {
    puts 'hi im a bloc'
}

puts '---'

def wrappy
    puts 'wrappy-a'
    fun2 {
        puts 'hi im a bloc'
        return
    }
    puts 'wrappy-b'
end

wrappy

puts '---'

def wrappy2
    puts 'wrappy2-a'
    fun2 {
        puts 'hi im a bloc'
        break
    }
    puts 'wrappy2-b'
end

wrappy2

puts '---'

def wrappy3
    puts 'wrappy3-a'
    fun2 {
        puts 'hi im a bloc'
        next
        puts 'after next'
    }
    puts 'wrappy3-b'
end

wrappy3
