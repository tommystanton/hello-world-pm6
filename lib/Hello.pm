class Hello {
    method greet(Str $name?) returns Str {
        if $name {
            return "Hello $name!";
        }

        return "Hello world!";
    }
}

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
