class Hello {
    method greet() returns Str {
        return "Hello world!";
    }

    method greet-personally(Str $name) returns Str {
        return "Hello $name!";
    }
}

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
