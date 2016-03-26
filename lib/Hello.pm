class Hello {
    has Str $.name;

    method greet() returns Str {
        my $greeting = sprintf 'Hello %s!', $.name // 'world';

        return $greeting;
    }
}

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
