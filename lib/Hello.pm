class Hello {
    has Str $.name;

    method greet() returns Str {
        if $.name {
            return "Hello $.name!";
        }

        return "Hello world!";
    }
}

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
