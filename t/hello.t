use v6;
use Test;

use lib 'lib';
use Hello;

{
    my $hello = Hello.new();

    isa-ok($hello, Hello);
    can-ok($hello, 'greet');
    can-ok($hello, 'name');
}

{
    my $hello = Hello.new();
    is($hello.greet(), 'Hello world!', 'greet()');
}

{
    my $hello = Hello.new(name => 'Bob');
    is($hello.greet(), 'Hello Bob!', 'greet() with name');
}

done-testing();

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
